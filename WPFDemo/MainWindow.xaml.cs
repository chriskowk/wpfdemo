using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WPFDemo.Data;

namespace WPFDemo
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            InitData();
        }

        private void InitData()
        {
            TreeViewOrg.ItemsSource = TreeviewDataInit.Instance.OrgList;
            MultiCmb.ItemsSource = MultiComboBoxList.Instance.MultiComboBoxListData;
            DataGrid.ItemsSource = DataGridDataInit.Instance.StudentList;
            UserInfoList.ItemsSource = ListBoxDataInit.Instance.UserList;
            ListView.ItemsSource = ListViewDataInit.Instance.ListViewDataList;

            Debug.Print(GetMSBuildFilePath("2017", "15.0"));
            Debug.Print(GetMSBuildFilePath("2019", "Current"));
        }

        private string GetMSBuildFilePath(string vYear, string vTag)
        {
            string f = $@"C:\Program Files (x86)\Microsoft Visual Studio\{vYear}\Community\MSBuild\{vTag}\Bin\MSBuild.exe";
            string[] disks = new string[] { "C:", "D:", "E:" };
            string[] subversions = new string[] { "Community", "Enterprise" };
            string[] programfiles = new string[] { "Program Files (x86)", "Program Files" };
            for (int i = 0; i < disks.Length; i++)
            {
                for (int j = 0; j < subversions.Length; j++)
                {
                    for (int k = 0; k < programfiles.Length; k++)
                    {
                        string path = $@"{disks[i]}\{programfiles[k]}\Microsoft Visual Studio\{vYear}\{subversions[j]}\MSBuild\{vTag}\Bin\MSBuild.exe";
                        if (File.Exists(path)) { return path; }
                    }
                }
            }
            return f;
        }

        private void CheckProgressBar_Click(object sender, RoutedEventArgs e)
        {
            Task.Factory.StartNew(SchedulerWork);
        }

        private void SchedulerWork()
        {
            Task.Factory.StartNew(BeginInvoke, _progressBar).Wait();
        }

        private readonly TaskScheduler _syncContextTaskScheduler = TaskScheduler.FromCurrentSynchronizationContext();
        private void BeginInvoke(object obj)
        {
            ProgressBar pb = obj as ProgressBar;
            for (int i = 0; i < 100; i++)
            {
                // 循环块模拟业务处理逻辑实现
                for (int j = 0; j < 100; j++)
                {
                    Debug.WriteLine(j);
                }

                // 不能直接设置进度条的值（pb.Value = i + 1;）；否则抛出异常“调用线程无法访问此对象，因为另一个线程拥有该对象。”
                Task.Factory.StartNew(() => UpdateProgressBar(pb, i + 1),
                    new CancellationTokenSource().Token, TaskCreationOptions.None, _syncContextTaskScheduler).Wait();
            }
        }

        private void UpdateProgressBar(ProgressBar pb, int val)
        {
            pb.Value = val;
        }
    }
}
