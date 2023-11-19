using fnres.classes;
using fnres.Properties;
using System;
using System.Collections;
using System.IO;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace fnres
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private bool IsLightTheme = true;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ApplyButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //get values
                int width = int.Parse(WidthBox.Text);
                int height = int.Parse(HeightBox.Text);
                int mode = ModeBox.SelectedIndex;
                int fps = int.Parse(FPSBox.Text);
                bool llm = (bool)LowLatencyMode.IsChecked;

                //get the file
                FileInfo file = new FileInfo(GameUserSettings.GameUserSettingsFile);

                //check if it even exists
                if (!file.Exists)
                {
                    throw new Exception("Settings file doesn't exist!");
                }

                //set read only to off so we can modify
                file.IsReadOnly = false;

                //write config
                GameUserSettings.SetConfig(width, height, fps, mode, llm);

                //set read only back to enabled so the values will stay
                file.IsReadOnly = true;

                MessageBox.Show("Succesfully applied settings to " + file.FullName, "fnres", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "fnres", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //get values to show
            try
            {
                ArrayList values = GameUserSettings.GetConfig();

                WidthBox.Text = values[0].ToString();
                HeightBox.Text = values[1].ToString();
                FPSBox.Text = values[2].ToString();
                ModeBox.SelectedIndex = (int)values[3];
                LowLatencyMode.IsChecked = (bool)values[4];
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error while getting GameUserSettings values, is the file corrupted? Message: " + ex.Message, "fnres", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            //check theme
            if (Settings.Default.DarkMode)
            {
                ThemeButton_Click(sender, e);
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //save theme
            Settings.Default.DarkMode = !IsLightTheme;
            Settings.Default.Save();
        }

        private void ThemeButton_Click(object sender, RoutedEventArgs e)
        {
            Dispatcher.Invoke(() =>
            {
                try
                {
                    BrushConverter converter = new BrushConverter();

                    if (IsLightTheme)
                    {
                        Resources["MainBGBrush"] = (Brush)converter.ConvertFromString("#111317");
                        Resources["SecondaryBGBrush"] = (Brush)converter.ConvertFromString("#23252e");
                        Resources[SystemColors.ControlTextBrushKey] = Brushes.White;
                        ModeBox.Foreground = Brushes.White;

                        IsLightTheme = false;
                    }
                    else
                    {
                        Resources["MainBGBrush"] = (Brush)converter.ConvertFromString("#f1f3f9");
                        Resources["SecondaryBGBrush"] = (Brush)converter.ConvertFromString("#d2daff");
                        Resources[SystemColors.ControlTextBrushKey] = Brushes.Black;
                        ModeBox.Foreground = Brushes.Black;

                        IsLightTheme = true;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error while changing the theme. Message: " + ex.Message, "fnres", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            });
        }
    }
}