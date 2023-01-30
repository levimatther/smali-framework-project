.class final Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;
.super Lcom/android/dialer/enrichedcall/EnrichedCallComponent;
.source "DaggerAospDialerRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnrichedCallComponentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-direct {p0}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$1;)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;-><init>(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)V

    return-void
.end method


# virtual methods
.method public getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1700(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    return-object v0
.end method

.method public getRcsVideoShareFactory()Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent$EnrichedCallComponentImpl;->this$0:Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;

    invoke-static {v0}, Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;->access$1800(Lcom/android/dialer/binary/aosp/DaggerAospDialerRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;

    return-object v0
.end method
