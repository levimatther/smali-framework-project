.class final Lcom/android/dialer/app/calllog/IntentProvider$2;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/app/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountHandle:Landroid/telecom/PhoneAccountHandle;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/dialer/app/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 71
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$2;->val$number:Ljava/lang/String;

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    iget-object v0, p0, Lcom/android/dialer/app/calllog/IntentProvider$2;->val$accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
