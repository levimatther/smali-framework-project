.class final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;
.super Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;
.source "DaggerAospDialerRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallLogDatabaseComponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-direct {p0}, Lcom/android/dialer/calllog/database/CallLogDatabaseComponent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V

    return-void
.end method


# virtual methods
.method public coalescer()Lcom/android/dialer/calllog/database/Coalescer;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$CallLogDatabaseComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1500(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Lcom/android/dialer/calllog/datasources/DataSources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/database/Coalescer_Factory;->newInstance(Lcom/android/dialer/calllog/datasources/DataSources;)Lcom/android/dialer/calllog/database/Coalescer;

    move-result-object v0

    return-object v0
.end method

.method public mutationApplier()Lcom/android/dialer/calllog/database/MutationApplier;
    .locals 1

    .line 244
    invoke-static {}, Lcom/android/dialer/calllog/database/MutationApplier_Factory;->newInstance()Lcom/android/dialer/calllog/database/MutationApplier;

    move-result-object v0

    return-object v0
.end method
