.class public final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.super Ljava/lang/Object;
.source "DaggerAospDialerRootComponent.java"

# interfaces
.implements Lcom/android/dialer/binary/aosp/AospDialerRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$LightbringerComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$VoicemailComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MapsComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MainComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$DialerExecutorComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$ConfigProviderComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLocationComponentImpl;,
        Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
    }
.end annotation


# instance fields
.field private bindMapsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/incallui/maps/Maps;",
            ">;"
        }
    .end annotation
.end field

.field private bindsLightbringerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/lightbringer/Lightbringer;",
            ">;"
        }
    .end annotation
.end field

.field private bindsSimulatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/simulator/Simulator;",
            ">;"
        }
    .end annotation
.end field

.field private callLogFrameworkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/CallLogFramework;",
            ">;"
        }
    .end annotation
.end field

.field private final contextModule:Lcom/android/dialer/inject/ContextModule;

.field private provideCallLogDataSourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/calllog/datasources/DataSources;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideEnrichedCallManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/enrichedcall/EnrichedCallManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVoicemailClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/voicemail/VoicemailClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesRcsVideoShareFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPrefConfigProvider:Ljavax/inject/Provider;

.field private toProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/dialer/configprovider/ConfigProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dialer/inject/ContextModule;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->contextModule:Lcom/android/dialer/inject/ContextModule;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->initialize(Lcom/android/dialer/inject/ContextModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/inject/ContextModule;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;-><init>(Lcom/android/dialer/inject/ContextModule;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->callLogFrameworkProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Lcom/android/dialer/inject/ContextModule;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->contextModule:Lcom/android/dialer/inject/ContextModule;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Lcom/android/dialer/calllog/datasources/DataSources;
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->getDataSources()Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->toProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideEnrichedCallManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->providesRcsVideoShareFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindMapsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindsSimulatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideVoicemailClientProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindsLightbringerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;
    .locals 2

    .line 98
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$Builder;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method private getDataSources()Lcom/android/dialer/calllog/datasources/DataSources;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;

    invoke-direct {v0}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;-><init>()V

    new-instance v1, Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;

    invoke-direct {v1}, Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;-><init>()V

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->provideCallLogDataSources(Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource;Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource;)Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/android/dialer/inject/ContextModule;)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource_Factory;->create()Lcom/android/dialer/calllog/datasources/systemcalllog/SystemCallLogDataSource_Factory;

    move-result-object v0

    invoke-static {}, Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource_Factory;->create()Lcom/android/dialer/calllog/datasources/contacts/ContactsDataSource_Factory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/dialer/calllog/CallLogModule_ProvideCallLogDataSourcesFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideCallLogDataSourcesProvider:Ljavax/inject/Provider;

    .line 107
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFramework_Factory;->create(Ljavax/inject/Provider;)Lcom/android/dialer/calllog/CallLogFramework_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->callLogFrameworkProvider:Ljavax/inject/Provider;

    .line 108
    invoke-static {p1}, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->create(Lcom/android/dialer/inject/ContextModule;)Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 109
    invoke-static {p1}, Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/dialer/configprovider/SharedPrefConfigProvider_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->sharedPrefConfigProvider:Ljavax/inject/Provider;

    .line 110
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->toProvider:Ljavax/inject/Provider;

    .line 111
    invoke-static {}, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvideEnrichedCallManagerFactory;->create()Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvideEnrichedCallManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideEnrichedCallManagerProvider:Ljavax/inject/Provider;

    .line 112
    invoke-static {}, Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;->create()Lcom/android/dialer/enrichedcall/stub/StubEnrichedCallModule_ProvidesRcsVideoShareFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->providesRcsVideoShareFactoryProvider:Ljavax/inject/Provider;

    .line 113
    invoke-static {}, Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;->create()Lcom/android/incallui/maps/stub/StubMapsModule_StubMaps_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindMapsProvider:Ljavax/inject/Provider;

    .line 114
    invoke-static {}, Lcom/android/dialer/simulator/impl/SimulatorImpl_Factory;->create()Lcom/android/dialer/simulator/impl/SimulatorImpl_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindsSimulatorProvider:Ljavax/inject/Provider;

    .line 115
    iget-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideContextProvider:Ljavax/inject/Provider;

    invoke-static {p1}, Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;->create(Ljavax/inject/Provider;)Lcom/android/voicemail/impl/VoicemailModule_ProvideVoicemailClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->provideVoicemailClientProvider:Ljavax/inject/Provider;

    .line 116
    invoke-static {}, Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;->create()Lcom/android/dialer/lightbringer/stub/LightbringerStub_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->bindsLightbringerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public callLocationComponent()Lcom/android/incallui/calllocation/CallLocationComponent;
    .locals 2

    .line 121
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLocationComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLocationComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public callLogComponent()Lcom/android/dialer/calllog/CallLogComponent;
    .locals 2

    .line 126
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public callLogDatabaseComponent()Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;
    .locals 2

    .line 131
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public configProviderComponent()Lcom/android/dialer/configprovider/ConfigProviderComponent;
    .locals 2

    .line 136
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$ConfigProviderComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$ConfigProviderComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public dialerExecutorComponent()Lcom/android/dialer/common/concurrent/DialerExecutorComponent;
    .locals 2

    .line 141
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$DialerExecutorComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$DialerExecutorComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public enrichedCallComponent()Lcom/android/dialer/enrichedcall/EnrichedCallComponent;
    .locals 2

    .line 151
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public lightbringerComponent()Lcom/android/dialer/lightbringer/LightbringerComponent;
    .locals 2

    .line 171
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$LightbringerComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$LightbringerComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public mainComponent()Lcom/android/dialer/main/MainComponent;
    .locals 2

    .line 146
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MainComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MainComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public mapsComponent()Lcom/android/incallui/maps/MapsComponent;
    .locals 2

    .line 156
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MapsComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$MapsComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public simulatorComponent()Lcom/android/dialer/simulator/SimulatorComponent;
    .locals 2

    .line 161
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$SimulatorComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method

.method public voicemailComponent()Lcom/android/voicemail/VoicemailComponent;
    .locals 2

    .line 166
    new-instance v0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$VoicemailComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$VoicemailComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V

    return-object v0
.end method
