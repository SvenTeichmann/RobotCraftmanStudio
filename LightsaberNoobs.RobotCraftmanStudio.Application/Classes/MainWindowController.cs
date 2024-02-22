using LightsaberNoobs.RobotCraftmanStudio.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LightsaberNoobs.RobotCraftmanStudio.Classes
{
    public class MainWindowController : IMainWindowController
    {
        private IMainWindow mainWindow;

        public MainWindowController(IMainWindow mainWindow) 
        { 
            this.mainWindow = mainWindow;
        }
    }
}
