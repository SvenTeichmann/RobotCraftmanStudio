using LightsaberNoobs.RobotCraftmanStudio.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

namespace LightsaberNoobs.RobotCraftmanStudio
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MahApps.Metro.Controls.MetroWindow, IMainWindow
    {
        private IMainWindowController controller;
        private IDockingController dockingController;

        public MainWindow()
        {
            this.InitializeComponent();

            this.controller = new Classes.MainWindowController(this);
            
            this.dockingController = new Classes.DockingController();
            this.dockingController.ChangeTheme("ExpressionDark");            
        }        

        private void LaunchGitHubSite(object sender, RoutedEventArgs e)
        {
            // Launch the GitHub site...
        }

        private void DeployCupCakes(object sender, RoutedEventArgs e)
        {
            // deploy some CupCakes...
        }
    }
}
