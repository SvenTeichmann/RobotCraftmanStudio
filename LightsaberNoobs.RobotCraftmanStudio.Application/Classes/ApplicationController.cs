using ControlzEx.Theming;
using LightsaberNoobs.RobotCraftmanStudio.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace LightsaberNoobs.RobotCraftmanStudio.Classes
{
    public class ApplicationController : IApplicationController
    {
        public ApplicationController()
        {            
        }

        public void OnStartup(Application app)
        {
            this.ChangeTheme(app);
        }

        private void ChangeTheme(Application app)
        {
            ThemeManager.Current.ChangeTheme(app, "Dark.Steel");
        }
    }
}
