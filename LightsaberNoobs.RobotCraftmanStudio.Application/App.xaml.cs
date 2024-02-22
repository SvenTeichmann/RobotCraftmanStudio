using ControlzEx.Theming;
using LightsaberNoobs.RobotCraftmanStudio.Classes;
using LightsaberNoobs.RobotCraftmanStudio.Interfaces;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace LightsaberNoobs.RobotCraftmanStudio
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private IApplicationController applicationController;

        public App()
        {
            this.applicationController = new ApplicationController();
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            
            this.applicationController.OnStartup(this);
        }
    }
}
