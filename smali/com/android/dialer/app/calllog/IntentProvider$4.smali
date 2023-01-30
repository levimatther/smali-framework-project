.class final Lcom/android/dialer/app/calllog/IntentProvider$4;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getReturnVoicemailCallIntentProvider()Lcom/android/dialer/app/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 92
    new-instance p1, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-static {}, Lcom/android/dialer/util/CallUtil;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/callintent/CallInitiationType$Type;->CALL_LOG:Lcom/android/dialer/callintent/CallInitiationType$Type;

    invoke-direct {p1, v0, v1}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Landroid/net/Uri;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 93
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
