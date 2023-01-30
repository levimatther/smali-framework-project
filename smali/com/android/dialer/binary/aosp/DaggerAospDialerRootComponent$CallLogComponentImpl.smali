.class final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;
.super Lcom/android/dialer/calllog/CallLogComponent;
.source "DaggerAospDialerRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallLogComponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogComponent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V

    return-void
.end method


# virtual methods
.method public callLogFramework()Lcom/android/dialer/calllog/CallLogFramework;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1300(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogFramework;

    return-object v0
.end method

.method public getRefreshAnnotatedCallLogWorker()Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1400(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Lcom/android/dialer/inject/ContextModule;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/inject/ContextModule_ProvideContextFactory;->provideContext(Lcom/android/dialer/inject/ContextModule;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1500(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker_Factory;->newInstance(Landroid/content/Context;Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/RefreshAnnotatedCallLogWorker;

    move-result-object v0

    return-object v0
.end method
