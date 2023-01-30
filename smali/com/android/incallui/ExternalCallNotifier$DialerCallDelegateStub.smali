.class Lcom/android/incallui/ExternalCallNotifier$DialerCallDelegateStub;
.super Ljava/lang/Object;
.source "ExternalCallNotifier.java"

# interfaces
.implements Lcom/android/incallui/call/DialerCallDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ExternalCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialerCallDelegateStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/ExternalCallNotifier$1;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/android/incallui/ExternalCallNotifier$DialerCallDelegateStub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialerCallFromTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/call/DialerCall;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
