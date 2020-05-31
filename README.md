# SwiftUI-Preview-Data-Provider

## Description:
- This repository contains file which make our life easy for adding different iPhones and configration for PreviewProvider.

## Requirements

- iOS 13.0+
- Xcode 11.0+
- MacOS Catalina

## Usage:

### Check ContentView.swift in PreviewDataProviderExample project.

```sh
struct ContentView_Previews: PreviewProvider {

    static let previewData = [
        PreviewDataProvider(with: .iPhone_X,
                            colorScheme: .light,
                            locale: .current,
                            layoutDirection: .leftToRight),
        PreviewDataProvider(with: .iPhone_SE,
                            colorScheme: .dark,
                            locale: .current,
                            layoutDirection: .rightToLeft)
    ]

    static var previews: some View {
        ForEach(previewData, id: \.id) { data  in
            ContentView()
                .colorScheme(data.colorScheme)
                .previewDevice(PreviewDevice(with: data.device))
                .environment(\.locale, data.locale)
        }
    }
}
```
___
### If you do not want to create the data then you can use default data from PreviewDataProvider

```sh
struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ForEach(PreviewDataProvider.data, id: \.id) { data  in
            ContentView()
                .colorScheme(data.colorScheme)
                .previewDevice(PreviewDevice(with: data.device))
                .environment(\.locale, data.locale)
        }
    }
}
```

## Contribution
Any contribution is most welcome.


## Authors
[***Ankush Bhatia**](https://github.com/ankush-bhatia)

## License
This project is licensed under the MIT License -  [LICENSE](LICENSE).






