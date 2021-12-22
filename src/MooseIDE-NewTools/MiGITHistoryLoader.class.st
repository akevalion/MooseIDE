"
Loads and store a git repo history in JSON format

API:
- `#loadFile: 'aFileName.json'` loads the history described in the file (see below) and stores it in the MiGITHistoryLoader instance
- `activityFor: aFamixClass since: aPharoDate`, returns a number (float) representing the ""intensity"" of git activity for this class since the date specified

Example of a short history of MooseIDE project in JSON format:
```
[
{ ""commit"":""daa5759cc621292c8bbcab79ed264a1d01cc9637"",""date"":""2021-12-9"",""files"":[]},
{ ""commit"":""e97eda1d6d38d341f21de39cd7ee75930a74bcbb"",""date"":""2021-12-9"",""files"":[
    {""package"":""MooseIDE-QueriesBrowser"",""file"":""MiRelationQueryPresenter""},
    {""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""}]},
{ ""commit"":""4df8abe8cc253b68eac35229edd5b551230841d3"",""date"":""2021-12-7"",""files"":[]},
{ ""commit"":""f10e67092290985258da4eac404628a9122668cf"",""date"":""2021-12-7"",""files"":[
    {""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
    {""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowserModel""}]},
{ ""commit"":""7a545a523b28aaff671aac570ad7ac849f4b8149"",""date"":""2021-12-5"",""files"":[]},
{ ""commit"":""77e0bdd298b903f909bd2663a91eafb65f21d712"",""date"":""2021-12-5"",""files"":[
    {""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""}]},
{ ""commit"":""8c88c41c6113b30b8f24e2f6429d108ea41eae70"",""date"":""2021-12-5"",""files"":[]},
{ ""commit"":""89338ce040943668eeb205c146f4c5447f6b1ccc"",""date"":""2021-12-5"",""files"":[
    {""package"":""MooseIDE-Tests"",""file"":""MiHierarchicalVisualizationBrowserTest""}]},
{ ""commit"":""b027a97fcc5b44c86657f1ad32f84912fae50149"",""date"":""2021-12-5"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""6d2ed9d5e7c597a27ce1c01939c4e7fd1553cbe3"",""date"":""2021-12-4"",""files"":[
{""package"":""MooseIDE-Tests"",""file"":""MiHierarchicalVisualizationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiHierarchicalVisualizationTest""}]},
{ ""commit"":""5d2057a4280844b919bed19c54279870ba32654d"",""date"":""2021-12-4"",""files"":[
{""package"":""MooseIDE-Tests"",""file"":""MiVisualizationThemeTest""},
{""package"":""MooseIDE-Visualization"",""file"":""MiVisualizationTheme""}]},
{ ""commit"":""a883802f3655906ede73e345fe7184ba5e6a58a5"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""9d7eb0e29aaf34a27258d5c025486ed98a14d0ab"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiApplication""},
{""package"":""MooseIDE-Core"",""file"":""MiOverviewBrowser""}]},
{ ""commit"":""3261ab1e687139ecf570f0ddcfb5a75a5db05772"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiApplication""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserPresenter""},
{""package"":""MooseIDE-Core"",""file"":""MiBusPresenter""},
{""package"":""MooseIDE-Core"",""file"":""MiOverviewBrowser""}]},
{ ""commit"":""cbbda63a62e8dca3863fa26cef300ba719e4c189"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""dada115415ba409d6ff255a749536cf9225b4009"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""031854896a89c1768ac60640622bf6a268158a9b"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""a0f29b86140c54fab9257b73f4382b3646033995"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""}]},
{ ""commit"":""5a89b951fd8dac7d951a933aea35b063c06434d7"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""8f034baa4eaea0eda3d2205305577c8d67a74940"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""ca0001498eda1bd0d860ca0d077127f754bf4c1c"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBus""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisation""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableAbstractWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableDefaultBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesBrowserTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesListPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiAbstractBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiBusTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiDependencyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiExportBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFameBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFilesBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiMooseModelBrowserTests""},
{""package"":""MooseIDE-Tests"",""file"":""MiPropertyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiSourceTextBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeMapVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiUMLBrowserTest""}]},
{ ""commit"":""5d5b15022963092bc3b075d6147f479350fa4fab"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""6298b8e62ad14812c483d30967198e0f8febec42"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""}]},
{ ""commit"":""11d20d58453a32c398170efa0b052894c4481a97"",""date"":""2021-12-3"",""files"":[]},
{ ""commit"":""1ca87bf378c29dce527d79f42ab7614decae72fd"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusLogBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiLogsBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Export"",""file"":""MiExportBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiCycleDependenciesBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDependencyButterflyBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDistributionMapBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiNavigationTreeBrowser""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""ce07887847b465c8cf21b213a81b919073ac80e3"",""date"":""2021-12-3"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiAbstractFamixBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesModel""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedFunctionBrowserModel""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodVisualization""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowserModel""},
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLModel""},
{""package"":""MooseIDE-Tests"",""file"":""MiAbstractBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiApplicationTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiBusLogBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiBusTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiDependencyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiExportBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFameBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFilesBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiLoggerTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiLogsBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiModelRootBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiMooseModelBrowserTests""},
{""package"":""MooseIDE-Tests"",""file"":""MiPropertyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiSourceTextBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTagBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeMapVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiUMLBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""SpRGBChooserTest""}]},
{ ""commit"":""0ffe8cbf0535f22be1c0c783c5f9cffd18f2fe92"",""date"":""2021-11-30"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualization""},
{""package"":""MooseIDE-Visualization"",""file"":""MiVisualizationTheme""}]},
{ ""commit"":""1f87536be353a0f5fb5678a7ebbfa41d38911927"",""date"":""2021-11-27"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiNodeStyler""}]},
{ ""commit"":""46d8df796bb9cc29dbcdad0ca5152bd0b57c53c8"",""date"":""2021-11-27"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualization""}]},
{ ""commit"":""80ba90f1964d4de0cb9620fd0c8dcd09587edb75"",""date"":""2021-11-24"",""files"":[]},
{ ""commit"":""06cb87cd5ebc72693e2b9c19d2288ad889add0fc"",""date"":""2021-11-22"",""files"":[]},
{ ""commit"":""ea9778dfce4f3931adcaef42bad9bcaf18f37a6f"",""date"":""2021-11-22"",""files"":[]},
{ ""commit"":""e423d508633bbbb97f924bc25757e6729e760ad5"",""date"":""2021-11-22"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiNavigationBrowser""}]},
{ ""commit"":""152ee2ffdfacd0839a97420828e226addbc46e5c"",""date"":""2021-11-16"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMap""}]},
{ ""commit"":""d9b42fd0a372526399649e3072189aa5e8e6272a"",""date"":""2021-11-16"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""}]},
{ ""commit"":""7217435defde34e48d59e219d640816779c1890d"",""date"":""2021-11-16"",""files"":[
{""package"":""MooseIDE-Export"",""file"":""MiExportBrowser""}]},
{ ""commit"":""4b8aadcb51ba35faf355429b544c9ff8a11ad5fb"",""date"":""2021-11-11"",""files"":[]},
{ ""commit"":""baa240ac5449637e35f426724c1843459ee40ed9"",""date"":""2021-11-11"",""files"":[]},
{ ""commit"":""1da1acf8e0c6831028b001cde8d4026b3668c737"",""date"":""2021-11-10"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiRelationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiRelationQueryPresenter""}]},
{ ""commit"":""77971d2d654db686557f9be55eaf02a92cfc1ed1"",""date"":""2021-11-8"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInspectInMooseCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInstalledModelsCommand""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeMapVisualisationBrowserTest""}]},
{ ""commit"":""1fc733d6ac3d74c983de354648d671de76d636ee"",""date"":""2021-11-5"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiPresenter""}]},
{ ""commit"":""fb7a9cd4657c724b117166873172e5c51eb6e16d"",""date"":""2021-11-5"",""files"":[
{""package"":""MooseIDE-Export"",""file"":""MiExportBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiExportBrowserTest""}]},
{ ""commit"":""5006501230a5c852767b37d430a4ac6617f711ad"",""date"":""2021-10-29"",""files"":[]},
{ ""commit"":""e6e936399d62bb94077a9ef7f613a33e0925de19"",""date"":""2021-10-29"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiModelNavigationBrowser""}]},
{ ""commit"":""a5aa924b0344df4cdb724de96a2da6ba205df3e0"",""date"":""2021-10-29"",""files"":[]},
{ ""commit"":""97c316f8a0d717ca340a6165a552870abf2e97cc"",""date"":""2021-10-29"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiNonUsedMethodBrowserTest""}]},
{ ""commit"":""623c21df4f82e83772702001827bb1772efb9238"",""date"":""2021-10-29"",""files"":[]},
{ ""commit"":""d39f03f6ca2199b026cb381ffc1e9efea3940a3c"",""date"":""2021-10-29"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiComparativeQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""InputProcessingWaiter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiBooleanQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNumericQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiPropertyQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiStringQueryPresenter""}]},
{ ""commit"":""c08579b0edf0b16a52bf2185c1e5370f7f92ab29"",""date"":""2021-10-29"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""}]},
{ ""commit"":""7b4b00ce875f864d1c830bae4bf570d13dd986c7"",""date"":""2021-10-29"",""files"":[]},
{ ""commit"":""16cef4c6e4d1a3049f4e40616450daf3742ccce9"",""date"":""2021-10-29"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""QueriesListChangedAnnouncement""}]},
{ ""commit"":""6bc1c3c6bd1331214c3a7810af506b4559d9a18f"",""date"":""2021-10-29"",""files"":[]},
{ ""commit"":""0e2335a9facabb2fa9a36b31b1d79322cd837c08"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiAbstractDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMap""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiAbstractFamixBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedFunctionBrowserModel""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodVisualization""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowserModel""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MooseSmalltalkPackagesSelector""},
{""package"":""MooseIDE-NewTools"",""file"":""KMModifiedKeyCombinationSequence""},
{""package"":""MooseIDE-NewTools"",""file"":""MiFameExtension""},
{""package"":""MooseIDE-NewTools"",""file"":""MiNavigationBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiObjectInspectorPresenter""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlayground""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInspectInMooseCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInstalledModelsCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPagePresenter""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPropertyExtension""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagTree""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagWidget""},
{""package"":""MooseIDE-Telescope"",""file"":""MiAbstractTelescopeBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiCycleDependenciesBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDependencyButterflyBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDistributionMapBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiNavigationTreeBrowser""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualization""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""a5f1348def9be1adbaef1af940aa7ab746423ad5"",""date"":""2021-10-28"",""files"":[]},
{ ""commit"":""b1ee9ad3c147bb77f1a2bb3c39cc5b64a7a36ef0"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowserModel""}]},
{ ""commit"":""b95b7c45aac884b190e45efbff28885349864ece"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowserToolbar""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""}]},
{ ""commit"":""c31d3e981225321972a8fe289f121a96f2ba74e8"",""date"":""2021-10-28"",""files"":[]},
{ ""commit"":""26f7d4bd6a959ed89e06442f86f32fbe282d0902"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNAryQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesListPresenterTest""}]},
{ ""commit"":""42c9612e8270390402e2115b2ebac16cc128c7bb"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MPImportCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportFileStructureCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportJSONCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportMSECommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportSTCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""}]},
{ ""commit"":""975568575331e8695f549510467ce6dcd886c587"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiApplication""},
{""package"":""MooseIDE-Core"",""file"":""MiBusesPopup""},
{""package"":""MooseIDE-Core"",""file"":""MiCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiDeleteModelCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiExportToJSONCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiExportToMSECommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHelpCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHelpPopup""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLoggerClearLogsCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLoggerRemoveLogCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLogsBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiMidasItemPresenter""},
{""package"":""MooseIDE-Core"",""file"":""MiModelExportCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiModelUtilityCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiNoSelectedElementToPropagateException""},
{""package"":""MooseIDE-Core"",""file"":""MiPresenter""},
{""package"":""MooseIDE-Core"",""file"":""MiPropagateCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiReceivingModeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiRenameModelCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiSelectedEntityLog""},
{""package"":""MooseIDE-Core"",""file"":""MiSetRootFolderCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiWindowPresenter""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableDefaultBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportJSONCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportMSECommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportSTCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""}]},
{ ""commit"":""da855bd137edb1cc8fa83ae245d926721519b1c2"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""QueryCompilerPresenter""}]},
{ ""commit"":""5530ac2702891ce871432a76cc8ec6daa2fd713f"",""date"":""2021-10-28"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MidasIcons""}]},
{ ""commit"":""8c2bd46bf8ff1a30e8700fc316900b49b87180fd"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""}]},
{ ""commit"":""5141a8b0dd2d412225bfa0ec71d7402f54be5450"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""}]},
{ ""commit"":""6519f8d8422df7f1c32e62d8c0ab2fdf284d826b"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNavigationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiPropertyQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesBrowserTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiScopeQueriesPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiTypeQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNoPossibleQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""QueryCompilerPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultTreePresenter""}]},
{ ""commit"":""cc37b2f47e45b09936a02a863d6a16b332e8bdb0"",""date"":""2021-10-27"",""files"":[]},
{ ""commit"":""2a24a1b77db1e31fb53cfbe429b8dc41544881e5"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-Tests"",""file"":""MiMooseModelBrowserTests""}]},
{ ""commit"":""0d8381a563d3cccdc8c4590668e832a996c1aa3e"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNullQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""}]},
{ ""commit"":""5f7231cf9259a5d32ba34fc4073bd316c0c5a6af"",""date"":""2021-10-27"",""files"":[]},
{ ""commit"":""6822c1903a973a580fcc4499c8d25ffbafa3338b"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""}]},
{ ""commit"":""5397103d8df73bfc8f85ccd09e81c004c43aaf33"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusPresenter""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiReceivingModeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiWindowPresenter""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiBusLogBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiDependencyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFameBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFilesBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiLogBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiLogsBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiModelRootBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiMooseModelBrowserTests""},
{""package"":""MooseIDE-Tests"",""file"":""MiNonUsedMethodBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiPropertyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiSourceTextBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeMapVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeVisualisationBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiUMLBrowserTest""}]},
{ ""commit"":""3388f98842e48382e54001eb56431225caadb8b6"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiBusLogBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusLogsList""},
{""package"":""MooseIDE-Core"",""file"":""MiLogBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiLoggerClearLogsCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLoggerRemoveLogCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLogsBrowser""}]},
{ ""commit"":""05434c32c6aea6a24d9c7c9ed15d74d381ea7d1f"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""}]},
{ ""commit"":""de7e50138271a06af711ef0675728c96bb6c3bdd"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiAddChildQueryCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiRemoveQueryCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""}]},
{ ""commit"":""5120dd5ba35346b6416ed715c4e1243e0268f08a"",""date"":""2021-10-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiManualQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""}]},
{ ""commit"":""e8fae488c083d5c108de6cb2341d3c23bea003f5"",""date"":""2021-10-26"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""e1a2334d313900684cb4a8fc5313c1ce76b2a4c0"",""date"":""2021-10-26"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNavigationQueryPresenter""}]},
{ ""commit"":""78978d0198629b328bb2fb96f99297043fd30bd0"",""date"":""2021-10-26"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""f7752ff0702c9aae97d9d79080a5489db189f0bd"",""date"":""2021-10-26"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNAryQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNegationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryConfiguratorPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiResultSizeQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiRemoveQueryCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""}]},
{ ""commit"":""663d0b59db6e8f1bf225d3e6753f7a589aa44cb0"",""date"":""2021-10-21"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiSaveQueriesCommandTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""SaveQueriesFixture""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""430564a5fb8f9ee6ae6257dce23222b41655da9d"",""date"":""2021-10-20"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MooseImportFromJSONForm""}]},
{ ""commit"":""03b8d66d491f8f7dfd345031f14417ed41e5777d"",""date"":""2021-10-20"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiPropertyQueryPresenter""}]},
{ ""commit"":""5b771a5a65127c704b3c7dba5fe35b6ad4d0ea1e"",""date"":""2021-10-20"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiPropertyQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""f449b42f709d9f2b4d0bd711322f6d449afe6947"",""date"":""2021-10-20"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiSaveQueriesCommandTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""SaveQueriesFixture""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""TreeQueryHolder""}]},
{ ""commit"":""d28a77a04ffd47584e980a4e1c2436ab84183e84"",""date"":""2021-10-14"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLModel""},
{""package"":""MooseIDE-Tests"",""file"":""MiUMLBrowserTest""}]},
{ ""commit"":""8ec8a93a86399c98c233c2ffb2b312c67cf9abba"",""date"":""2021-10-14"",""files"":[
{""package"":""MooseIDE-Tests"",""file"":""MiAbstractBrowserTest""}]},
{ ""commit"":""aebcc2ab95c947639a28eafb672fc9f2369f75f7"",""date"":""2021-10-14"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMap""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationModel""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeMapVisualisationBrowserTest""}]},
{ ""commit"":""3f37e083fd94132e84930d1fe5fbfee7b840943c"",""date"":""2021-10-14"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisation""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualizationModel""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeVisualisationBrowserTest""},
{""package"":""MooseIDE-Visualization"",""file"":""MiSelection""}]},
{ ""commit"":""dc4cdd37f1163f6538a984658830066053416486"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableAbstractWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableDefaultBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableRoassalWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""},
{""package"":""MooseIDE-Export"",""file"":""MiExportBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiAbstractTelescopeBrowser""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""0db28f8e38e778e8d9f8f10b12ec3d66bc26c8c5"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiTreeBrowserTest""}]},
{ ""commit"":""2480f296c465754ab93a4544d1ce69459b3c7142"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiSourceTextBrowserTest""}]},
{ ""commit"":""10095533ac78b1634cda14d6d7bcb2991cd5a5c4"",""date"":""2021-10-13"",""files"":[]},
{ ""commit"":""9bef4681bdee1cc1a1f35fec6d4c8163a87c3cc0"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiPropertyBrowserTest""}]},
{ ""commit"":""c591eb52d2249d46cff8c9cb046a83ab991f8e84"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Tests"",""file"":""MiNonUsedMethodBrowserTest""}]},
{ ""commit"":""c7644580a203a23123b49924f63fbd04cd5e1a63"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedFunctionBrowserModel""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodVisualization""},
{""package"":""MooseIDE-Tests"",""file"":""MiNonUsedMethodBrowserTest""}]},
{ ""commit"":""5e328ec696a6efbb4e3a2980c6b10513e4d3c70e"",""date"":""2021-10-13"",""files"":[]},
{ ""commit"":""136f6a4a0773db32e39ef2ea6ab3f8b7ed3000cf"",""date"":""2021-10-13"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""}]},
{ ""commit"":""14c8c636228080d46ccd199ee009ce6244eab4a4"",""date"":""2021-10-12"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiMooseModelBrowserTests""}]},
{ ""commit"":""3a85be5cd17209ac257c9215bf01d3eb93052cc3"",""date"":""2021-10-12"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""}]},
{ ""commit"":""0a9970304ac4e128d9fb06c544f2786757ef801b"",""date"":""2021-10-11"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiModelRootBrowserTest""}]},
{ ""commit"":""2bbe58c07cf07c18b006d7837fad3f37a8afce68"",""date"":""2021-10-11"",""files"":[]},
{ ""commit"":""59c1cd206965ebbef041247c89d4e6f48238f701"",""date"":""2021-10-11"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""}]},
{ ""commit"":""3d193a4be22635bf66a64c0d7e7b4641a2c25131"",""date"":""2021-10-8"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""763463623121b349a6c8461524d79ed0ae7668ea"",""date"":""2021-10-8"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusLogsList""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLogBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiLogBrowserTest""}]},
{ ""commit"":""d001464f558bd57f268567dae8e13b402673fbce"",""date"":""2021-10-8"",""files"":[]},
{ ""commit"":""cd7ae52b91615092bce177e0d4ea8737b3fa74aa"",""date"":""2021-10-8"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""}]},
{ ""commit"":""5ad8c0cdf764adf83ee19a043ffa4f625fb66a0f"",""date"":""2021-10-8"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""}]},
{ ""commit"":""5539978f5cd7ee44f0597139d314c343b5101f4f"",""date"":""2021-10-8"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiUML""},
{""package"":""MooseIDE-Meta"",""file"":""MiMetaBrowser""}]},
{ ""commit"":""aab465f0c902b1199ac44289a5bb75bdf588f843"",""date"":""2021-10-7"",""files"":[]},
{ ""commit"":""36c484dfbe7a8656cce0197e8deaf8ce36a804ab"",""date"":""2021-10-7"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""}]},
{ ""commit"":""d50f44d86ad7b85b59aba305fa136cfac0f6f6bc"",""date"":""2021-10-7"",""files"":[]},
{ ""commit"":""58886972aa8e3aa680e0b7099e905f526f012b44"",""date"":""2021-10-7"",""files"":[]},
{ ""commit"":""86c8ee65f78ac10a2b10d23d6f77bb53b7224793"",""date"":""2021-10-7"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""e000d07f79dfb6c42d68821b0d41c6f63589b435"",""date"":""2021-10-7"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiBooleanQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNAryQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNavigationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNegationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNumericQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryConfiguratorPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiScopeQueriesPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiStringQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiTypeQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""e321a8a005a58a75ba260eb55672e2a1f5ed401a"",""date"":""2021-10-7"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""21afad9ef57ddacb09ee9191ebd9a911007b8453"",""date"":""2021-10-7"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""8c0886f94358c5f97d0a3ad98175465e1541cfbd"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesListPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryConfiguratorPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""b8bbc984a8166ba6671bd7a26407326f79d71a07"",""date"":""2021-10-6"",""files"":[]},
{ ""commit"":""18aeb41c46ce6182dfea55902e57f8e88f7da12f"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusLogsList""},
{""package"":""MooseIDE-Core"",""file"":""MiLogBrowser""}]},
{ ""commit"":""80724a44f7645fc1a2a2c924d046f67f77bc7e0b"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiDependencyBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFameBrowserTest""},
{""package"":""MooseIDE-Tests"",""file"":""MiFilesBrowserTest""}]},
{ ""commit"":""85b5fe99064d07a2f975310574c70878c29b7ce6"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiFameBrowserTest""}]},
{ ""commit"":""e905fafa08e6f044359770a9e1811775d6bf2163"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyVisualization""}]},
{ ""commit"":""a43c427c6166f5b280e0a1d6b77a714edbed2688"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiInspectCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiPropagateCommand""},
{""package"":""MooseIDE-Tests"",""file"":""MiDependencyBrowserTest""}]},
{ ""commit"":""015c298d476bf983382d8bff092d9b91676d646c"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiBooleanQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNumericQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiScopeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiStringQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""5bff33cd1174a96dc66bc82b5c1a3cadad7bb46b"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiBooleanQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNavigationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNumericQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiScopeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiStringQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""2eed8c87650f3a72c33d48667771e4e168d7b464"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMap""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""}]},
{ ""commit"":""6081936e2b4f615069e6d0fed135894c68f0c12c"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBusesPopup""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""}]},
{ ""commit"":""8f2e7428eeaf344f23bfeda59caa4d418df817f8"",""date"":""2021-10-6"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNavigationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""55f187bea6d779ed5f8fcefd8d5fd8b3bc3e9395"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiExportToJSONCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiExportToMSECommand""}]},
{ ""commit"":""268290cb0fd183dd9dc54ce3f04a0039270b4563"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""}]},
{ ""commit"":""1d797fce1207fa1719ba494396d5e4f7c9fda760"",""date"":""2021-10-5"",""files"":[]},
{ ""commit"":""0d6c99e2847b40cc4d92795b52649e97a591d68e"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-Meta"",""file"":""MPImportCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MPImportJSONCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MooseImportFromJSONForm""}]},
{ ""commit"":""1c181d535f21ca614caf774a44a32cf12f1a752d"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiNavigationBrowser""}]},
{ ""commit"":""76ed9aa2a363a7067b386f4cd7d074d8b1fbb097"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""42de451a6e4847a2fb020cb800893f5639880b9a"",""date"":""2021-10-5"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiLoadQueriesCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiSaveQueriesCommand""}]},
{ ""commit"":""184b0964b0883533d74c157135d14a2af294cabd"",""date"":""2021-10-1"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNAryQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNegationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiPropertyQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesBrowserTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryConfiguratorPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""}]},
{ ""commit"":""eb98d924d41b200398f89ee7032a9e85ec840848"",""date"":""2021-10-1"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesBrowserTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueriesListPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryListItemPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""}]},
{ ""commit"":""b95dd2b0c2a6ffb1d3fbdab78c493485de2b78c6"",""date"":""2021-09-30"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiBooleanQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNavigationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNoPossibleQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNumericQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiPropertyQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfiguratorPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiScopeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiStringQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""1a87db6c65ebf44900e052f5826471d79185bae3"",""date"":""2021-09-29"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesListPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultTreePresenter""}]},
{ ""commit"":""4acd34254772e91f4d6a20a6c3df6288b954b7ed"",""date"":""2021-09-28"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""}]},
{ ""commit"":""06424b6cd8d05d85f8d81c7f8ba00c4af883a4ff"",""date"":""2021-09-28"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiReceivingModeCommand""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""}]},
{ ""commit"":""d3891bb2550144df0408c389f783aa9f6d259d7f"",""date"":""2021-09-28"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserReceivingMode""},
{""package"":""MooseIDE-Core"",""file"":""MiCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiInspectCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiReceivingModeCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiWindowPresenter""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""}]},
{ ""commit"":""52286b0b8ec141676400205ff2ebd3b5a2ea272a"",""date"":""2021-09-27"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""}]},
{ ""commit"":""bde2ab111a5382c25cf8f2202481cf9bb36b472b"",""date"":""2021-09-27"",""files"":[]},
{ ""commit"":""fd55589278cd18e4cd0c89598ed535532b670f67"",""date"":""2021-09-24"",""files"":[
{""package"":""MooseIDE-Tagging"",""file"":""MiAddTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiAddTagCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRemoveTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRemoveTagCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRenameTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowserModel""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagCommands""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagDetailPage""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagEntity""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagManagementPage""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagTree""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagWidget""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTreeWidget""},
{""package"":""MooseIDE-Tagging"",""file"":""SpAddRemoveListPresenter""},
{""package"":""MooseIDE-Tagging"",""file"":""SpColorDropdownList""},
{""package"":""MooseIDE-Tagging"",""file"":""SpRGBChooser""},
{""package"":""MooseIDE-Tests"",""file"":""MiTagBrowserTest""}]},
{ ""commit"":""d6371a71089e621655a70199a605dfd2081e3457"",""date"":""2021-09-23"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiBusesPopup""}]},
{ ""commit"":""04e0461afd4e9e2961b4095862b1207ae68beb05"",""date"":""2021-09-23"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiApplication""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserReceivingMode""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHelpCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiWindowPresenter""}]},
{ ""commit"":""d950cdcf1dc0f78ada4ac785730be268dcac6500"",""date"":""2021-09-21"",""files"":[]},
{ ""commit"":""8c2f4fb4675354ec9f4d5bc5540951a4cdcecae9"",""date"":""2021-09-21"",""files"":[
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableAbstractWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableDefaultBrowser""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableRoassalWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiAddTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiAddTagCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRemoveTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRemoveTagCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiRenameTagCategoryCommand""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowserModel""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagCommands""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagDetailPage""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagEntity""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagManagementPage""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagTree""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagWidget""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTreeWidget""},
{""package"":""MooseIDE-Tagging"",""file"":""SpAddRemoveListPresenter""},
{""package"":""MooseIDE-Tagging"",""file"":""SpColorDropdownList""},
{""package"":""MooseIDE-Tagging"",""file"":""SpRGBChooser""}]},
{ ""commit"":""058040cc1616120129f835d9e7cfc7e11e1939d5"",""date"":""2021-09-20"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiApplication""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserReceivingMode""},
{""package"":""MooseIDE-Core"",""file"":""MiCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiEditBusCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHelpCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiIconProvider""},
{""package"":""MooseIDE-Core"",""file"":""MiInspectCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiLoggerRemoveLogCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiModelExportCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiModelUtilityCommand""},
{""package"":""MooseIDE-Core"",""file"":""MiPropagateCommand""}]},
{ ""commit"":""ec4a1567185d3138fbce41c57e4f9cf25615102f"",""date"":""2021-09-17"",""files"":[]},
{ ""commit"":""6ed78d69eb4ff0c57fc2ac822f7cf74882ce7dc9"",""date"":""2021-09-17"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""}]},
{ ""commit"":""08e3b0e056be458974324d8e8249c1345271a56c"",""date"":""2021-09-17"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""}]},
{ ""commit"":""8a7fefa7f4db4a1ac15bbb303f6936ea12d9a8fc"",""date"":""2021-09-16"",""files"":[]},
{ ""commit"":""ea35194254723877be4e43b5bf4e6c8b3a62b6e9"",""date"":""2021-09-16"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""}]},
{ ""commit"":""7e8b33b88742cace3a19af8d62e5ab4b34f0169b"",""date"":""2021-09-16"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualization""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""a1c0fce4362da020ceb58a575c476cfe9028fab6"",""date"":""2021-09-16"",""files"":[]},
{ ""commit"":""43fdf0bd6dcf82ed7a919a2ac6e32cdea04c971d"",""date"":""2021-09-15"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserReceivingMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiLogBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowserModel""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiCycleDependenciesBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDependencyButterflyBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDistributionMapBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiNavigationTreeBrowser""}]},
{ ""commit"":""5769ba8b13ff93a27767b1e9d0e02a7dcb658148"",""date"":""2021-09-15"",""files"":[
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualization""},
{""package"":""MooseIDE-Visualization"",""file"":""MiHierarchicalVisualizationBrowser""}]},
{ ""commit"":""1adf93b5343f7b50789176131ea2442206a8482b"",""date"":""2021-09-15"",""files"":[]},
{ ""commit"":""93f8e57a6fae950019122679051d5a4fa9d6e4e4"",""date"":""2021-09-15"",""files"":[]},
{ ""commit"":""79d929123798986443b609986864a9f7e8f35676"",""date"":""2021-09-15"",""files"":[]},
{ ""commit"":""a2c3d8dbe7bfbafc7642affdc5bf9bdedb06f7fc"",""date"":""2021-09-15"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""AbstractBrowserMode""},
{""package"":""MooseIDE-Core"",""file"":""BrowserModeFollow""},
{""package"":""MooseIDE-Core"",""file"":""BrowserModeFreeze""},
{""package"":""MooseIDE-Core"",""file"":""BrowserModeHighlight""},
{""package"":""MooseIDE-Core"",""file"":""MiAbstractBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiBrowserReceivingMode""},
{""package"":""MooseIDE-Core"",""file"":""MiBus""},
{""package"":""MooseIDE-Core"",""file"":""MiFollowMode""},
{""package"":""MooseIDE-Core"",""file"":""MiFreezeMode""},
{""package"":""MooseIDE-Core"",""file"":""MiHighlightMode""},
{""package"":""MooseIDE-Core"",""file"":""MiLogBrowser""},
{""package"":""MooseIDE-Core"",""file"":""MiOverviewBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiDependencyBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeMapVisualisationBrowser""},
{""package"":""MooseIDE-Dependency"",""file"":""MiTreeVisualisationBrowser""},
{""package"":""MooseIDE-Export"",""file"":""MiExportBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiFilesBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiNonUsedMethodBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiSourceTextBrowser""},
{""package"":""MooseIDE-Famix"",""file"":""MiUMLBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiFameBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiModelRootBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiMooseModelBrowser""},
{""package"":""MooseIDE-Meta"",""file"":""MiPropertyBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""},
{""package"":""MooseIDE-Tagging"",""file"":""MiTagBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiCycleDependenciesBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDependencyButterflyBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiDistributionMapBrowser""},
{""package"":""MooseIDE-Telescope"",""file"":""MiNavigationTreeBrowser""},
{""package"":""MooseIDE-Tests"",""file"":""MiAbstractBrowserTest""}]},
{ ""commit"":""06e87b16b16a99c2f13cb74d97b888b9cbc3107a"",""date"":""2021-09-14"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundModelsPresenter""}]},
{ ""commit"":""0ee308db3ba7e24624b7e11346ac94c96b0321cd"",""date"":""2021-09-14"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""}]},
{ ""commit"":""883461ac7a3e10177ffca85077ba8f6af246f776"",""date"":""2021-09-14"",""files"":[]},
{ ""commit"":""2b519b1e6afbdd6d7fff99b3f6d18eb823257d57"",""date"":""2021-09-14"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""}]},
{ ""commit"":""726b2dc7bc1f3317a70d35246a7eedb7df85c000"",""date"":""2021-09-14"",""files"":[]},
{ ""commit"":""7be4a041969709eca90a32448bbe77d42821e9d1"",""date"":""2021-09-13"",""files"":[]},
{ ""commit"":""b249ffc11fb2eed683578f97743d29614b87c207"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""119be50a69d5cdeccfc61bc51c3c22aee5620c47"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""ee3289e195bfe3f41463471fd1d8b790859eaf3e"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""34433035803847968e362e86110bfc85f5f1e3ea"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""6d19fd81e17d9a6f8a2010e78d6a7256cf9c9bab"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""512c738cd25d476eefdf93176f3b0ac485564c50"",""date"":""2021-09-10"",""files"":[]},
{ ""commit"":""3ec5651be8ffa3f2e22bda44f7afbb4e6c5b5eb0"",""date"":""2021-09-9"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableAbstractWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDraggableRoassalWidget""},
{""package"":""MooseIDE-Durden"",""file"":""MiDropIntoBrowser""}]},
{ ""commit"":""13953f54c003586834e4725259640604148a540d"",""date"":""2021-09-3"",""files"":[]},
{ ""commit"":""8b3db8a7fe0eac80a9a6c533dcfd654d37295020"",""date"":""2021-09-3"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""}]},
{ ""commit"":""fded1f9564c8fde95e2dac111bab8eb1cad6b2b4"",""date"":""2021-09-3"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""KMModifiedKeyCombinationSequence""}]},
{ ""commit"":""223cda61a304c7c097ea5c84cc9cdab2927c9915"",""date"":""2021-09-3"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiBusLogsList""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiObjectContextPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueriesBrowser""}]},
{ ""commit"":""99518aace204ef7440d8c911084b0689196bffb2"",""date"":""2021-09-3"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""KMModifiedKeyCombinationSequence""},
{""package"":""MooseIDE-NewTools"",""file"":""MiInspectorBrowser""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInspectInMooseCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundModelsPresenter""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPagePresenter""}]},
{ ""commit"":""bef3f73f6bddf4e5790a9d992f32747af0052cd8"",""date"":""2021-09-2"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultTreePresenter""}]},
{ ""commit"":""1e35c7f091487b027ff91c7f40e0519c9b8088c1"",""date"":""2021-09-2"",""files"":[
{""package"":""MooseIDE-Core"",""file"":""MiApplication""}]},
{ ""commit"":""7875ae14a80623562997eacbdc3da301ef012f02"",""date"":""2021-09-2"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiPlayground""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInstalledModelsCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundModelsPresenter""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPage""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPagePresenter""}]},
{ ""commit"":""646e45ea199b57c3fa62bd3345818383640ea04e"",""date"":""2021-09-2"",""files"":[]},
{ ""commit"":""f1fd9338ee54da237ca33ff17be87cb5e85bcb9c"",""date"":""2021-09-2"",""files"":[
{""package"":""BaselineOfMooseIDE"",""file"":""BaselineOfMooseIDE""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlayground""}]},
{ ""commit"":""f14e06b31b865b150841843565d9ec8d98b7b89d"",""date"":""2021-09-2"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiPlayground""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundInstalledModelsCommand""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundModelsPresenter""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPage""},
{""package"":""MooseIDE-NewTools"",""file"":""MiPlaygroundPagePresenter""}]},
{ ""commit"":""86f9b9c126d3a3888d464dab614bc4e6b90f097b"",""date"":""2021-09-1"",""files"":[
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNewToolsExtenstionsTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNAryQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNavigationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNegationQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiPropertyQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNewQueriesBrowserTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryBuilderPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiQueryConfigurationPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiNewQueryCreationPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiScopeQueriesPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser-Tests"",""file"":""MiTypeQueryPresenterTest""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiAddChildQueryCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNAryQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNavigationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNegationQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNewQueryCreationPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiPropertyQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiNewQueriesBrowser""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryBuilderPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryConfigurationPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryListItemPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiRemoveQueryCommand""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiResultSizeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiScopeQueryPresenter""},
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiTypeQueryPresenter""}]},
{ ""commit"":""c7bd1b7283cfaf030a5210f6bbd917813bfe6c55"",""date"":""2021-09-1"",""files"":[]},
{ ""commit"":""b29c857f661a35410106da613aeacc16ac43708d"",""date"":""2021-09-1"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiEvaluatorExtension""}]},
{ ""commit"":""ed6d0d83d7424ab6dd7332465c8e57e326e8b5fc"",""date"":""2021-09-1"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiObjectContextPresenter""}]},
{ ""commit"":""5f9f59d69c036474399bfcd3d93fbf1d7a57799b"",""date"":""2021-09-1"",""files"":[
{""package"":""MooseIDE-NewTools"",""file"":""MiEvaluatorExtension""},
{""package"":""MooseIDE-NewTools"",""file"":""MiObjectContextPresenter""}]},
{ ""commit"":""863f202bd1e1497e112d08463523d3ed67f47e30"",""date"":""2021-09-1"",""files"":[
{""package"":""MooseIDE-QueriesBrowser"",""file"":""MiQueryCodePresenter""}]}
]
```
"
Class {
	#name : #MiGITHistoryLoader,
	#superclass : #Object,
	#instVars : [
		'history'
	],
	#category : #'MooseIDE-NewTools-Inspector'
}

{ #category : #accessing }
MiGITHistoryLoader >> activityFor: aClass since: aDate [
	| activity dates |
	activity := 0.
	dates := self datesFor: aClass.
	dates := dates collect: [ :d | (d < aDate) ifTrue: [ aDate ] ifFalse: [ d ] ].
	(dates
		groupedBy: [ :d | (self monthsBack: d) + 1 ])
		keysAndValuesDo: [ :k :v | activity := activity + ((v size) / k) ].
	^activity
	
]

{ #category : #accessing }
MiGITHistoryLoader >> datesFor: aClass [
	^history
		select: [ :commit | commit includes: aClass ]
		thenCollect: #date
]

{ #category : #accessing }
MiGITHistoryLoader >> history [ 
	^history 
]

{ #category : #'as yet unclassified' }
MiGITHistoryLoader >> loadFile: aFileName [
	history := (NeoJSONReader
		fromString: (aFileName asFileReference readStream contents))
	collect: [ :dict ||classes|
		classes := (dict at: 'files')
			collect: [ :cd |
				(cd at: 'package') -> (cd at: 'file')].
	MiGITHistoryCommit new
		commit: (dict at: 'commit') ;
		date: (dict at: 'date') asDate ;
		classes: classes ;
		yourself ]
]

{ #category : #accessing }
MiGITHistoryLoader >> monthsBack: aDate [
	^((Date today - aDate) asDays / 30) asInteger
]
