using IniParser;
using IniParser.Model;
using System;
using System.Collections;

namespace fnres.classes
{
    public static class GameUserSettings
    {
        public static string GameUserSettingsFile { get; } = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "/FortniteGame/Saved/Config/WindowsClient/GameUserSettings.ini";

        private static string Section { get; } = "/Script/FortniteGame.FortGameUserSettings";
        private static readonly FileIniDataParser parser = new FileIniDataParser();

        private static string GetValue(string key, IniData data)
        {
            return data[Section][key];
        }

        private static void SetValue<T>(string key, T value, IniData data)
        {
            data[Section][key] = value.ToString();
        }

        /// <summary>
        /// Get the config file as an array, order is the same as in SetConfig()
        /// </summary>
        /// <returns>Array containing the values of the GameUserSettings ini file</returns>
        public static ArrayList GetConfig()
        {
            //configuration
            parser.Parser.Configuration.AssigmentSpacer = string.Empty;

            //read file
            IniData data = parser.ReadFile(GameUserSettingsFile);

            //assign
            int width = int.Parse(GetValue("ResolutionSizeX", data));
            int height = int.Parse(GetValue("ResolutionSizeY", data));
            int fps = int.Parse(GetValue("FrameRateLimit", data));
            int mode = int.Parse(GetValue("FullscreenMode", data));
            bool llm = bool.Parse(GetValue("LowInputLatencyModeIsEnabled", data));

            //return values
            return new ArrayList
            {
                width, height, fps, mode, llm
            };
        }

        /// <summary>
        /// Sets the fortnite configuration
        /// </summary>
        /// <param name="width">resolution x</param>
        /// <param name="height">resolution y</param>
        /// <param name="fps">fps cap</param>
        /// <param name="mode">fullscreen mode</param>
        /// <param name="llm">low latency mode</param>
        public static void SetConfig(int width, int height, int fps, int mode, bool llm)
        {
            //configuration
            parser.Parser.Configuration.AssigmentSpacer = string.Empty;

            //read file
            IniData data = parser.ReadFile(GameUserSettingsFile);

            //width
            SetValue("ResolutionSizeX", width, data);
            SetValue("LastUserConfirmedResolutionSizeX", width, data);
            SetValue("DesiredScreenWidth", width, data);
            SetValue("LastUserConfirmedDesiredScreenWidth", width, data);

            //height
            SetValue("ResolutionSizeY", height, data);
            SetValue("LastUserConfirmedResolutionSizeY", height, data);
            SetValue("DesiredScreenHeight", height, data);
            SetValue("LastUserConfirmedDesiredScreenHeight", height, data);

            //fps
            SetValue("FrameRateLimit", fps, data);
            SetValue("FrontendFrameRateLimit", fps, data);

            //mode
            SetValue("LastConfirmedFullscreenMode", mode, data);
            SetValue("PreferredFullscreenMode", mode, data);
            SetValue("FullscreenMode", mode, data);

            //llm
            SetValue("LowInputLatencyModeIsEnabled", llm, data);

            //save
            parser.WriteFile(GameUserSettingsFile, data);
        }
    }
}