using fnres.classes;
using System;
using System.Collections;
using System.IO;
using System.Windows;
using System.Windows.Input;

namespace fnres
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            App.Current.Shutdown();
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

                //check if file is read only and disable it during change
                FileInfo file = new FileInfo(GameUserSettings.GameUserSettingsFile);

                //check if it even exists
                if (!file.Exists)
                {
                    throw new Exception("Settings file doesn't exist!");
                }

                //set read only to off
                file.IsReadOnly = false;

                //write config
                GameUserSettings.SetConfig(width, height, fps, mode, llm);

                //set read only back to enabled
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
        }
    }
}