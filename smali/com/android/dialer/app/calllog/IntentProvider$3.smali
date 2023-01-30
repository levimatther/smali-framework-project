.class final Lcom/android/dialer/app/calllog/IntentProvider$3;
.super Lcom/android/dialer/app/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/IntentProvider;->getLightbringerIntentProvider(Ljava/lang/String;)Lcom/android/dialer/app/calllog/IntentProvider;
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

    .line 80
    iput-object p1, p0, Lcom/android/dialer/app/calllog/IntentProvider$3;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/dialer/app/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 83
    invoke-static {p1}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/IntentProvider$3;->val$number:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/android/dialer/lightbringer/Lightbringer;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
