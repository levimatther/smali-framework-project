.class final Lcom/android/dialer/app/calllog/IntentProvider$5;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$5;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$5;->val$number:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialer/util/IntentUtil;->getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
