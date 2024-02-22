using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LightsaberNoobs.RobotCraftmanStudio.Classes
{
    public class DockingController : Interfaces.IDockingController
    {
        public DockingController()
        { 
        
        }

        public void ChangeTheme(string themeName)
        {
            if (string.IsNullOrEmpty(themeName))
            {
                DevZest.Windows.Docking.Themes.Reset();
            }
            else
            {
                DevZest.Windows.Docking.Themes.Load(themeName);
            }
        }
    }
}
