

$urls = @("https://www.theodinproject.com/paths/foundations/courses/foundations","https://www.keybr.com","https://monkeytype.com/")

Add-Type -AssemblyName PresentationCore,PresentationFramework

$buttontype = [System.Windows.MessageBoxButton]::YesNo
$messageboxtitle = "Ready To Code?"
$messageboxbody = "Would you like to open your coding and typing sites?"
$messageicon = [System.Windows.MessageBoxImage]::Question

$fullmessage = [System.Windows.MessageBox]::Show($messageboxbody,$messageboxtitle,$buttontype,$messageicon)

switch ($fullmessage) {
    'Yes' {foreach($url in $urls){
        Start-process $url
    }  }
    'No' {exit}
}

