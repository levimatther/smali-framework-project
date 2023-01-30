.class public Lcom/android/dialer/contactactions/IntentModule;
.super Ljava/lang/Object;
.source "IntentModule.java"

# interfaces
.implements Lcom/android/dialer/contactactions/ContactActionModule;


# instance fields
.field private final context:Landroid/content/Context;

.field private final image:I

.field private final intent:Landroid/content/Intent;

.field private final text:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/dialer/contactactions/IntentModule;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/dialer/contactactions/IntentModule;->intent:Landroid/content/Intent;

    .line 41
    iput p3, p0, Lcom/android/dialer/contactactions/IntentModule;->text:I

    .line 42
    iput p4, p0, Lcom/android/dialer/contactactions/IntentModule;->image:I

    return-void
.end method

.method public static newCallModule(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/contactactions/IntentModule;
    .locals 2

    .line 62
    new-instance v0, Lcom/android/dialer/contactactions/IntentModule;

    new-instance v1, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-direct {v1, p1, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    .line 64
    invoke-virtual {v1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const p2, 0x7f11008f

    const v1, 0x7f0801b5

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/dialer/contactactions/IntentModule;-><init>(Landroid/content/Context;Landroid/content/Intent;II)V

    return-object v0
.end method

.method public static newVideoCallModule(Landroid/content/Context;Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/contactactions/IntentModule;
    .locals 2

    .line 71
    new-instance v0, Lcom/android/dialer/contactactions/IntentModule;

    new-instance v1, Lcom/android/dialer/callintent/CallIntentBuilder;

    invoke-direct {v1, p1, p2}, Lcom/android/dialer/callintent/CallIntentBuilder;-><init>(Ljava/lang/String;Lcom/android/dialer/callintent/CallInitiationType$Type;)V

    const/4 p1, 0x1

    .line 73
    invoke-virtual {v1, p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/callintent/CallIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const p2, 0x7f1104e0

    const v1, 0x7f0801f7

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/dialer/contactactions/IntentModule;-><init>(Landroid/content/Context;Landroid/content/Intent;II)V

    return-object v0
.end method


# virtual methods
.method public getDrawableId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/dialer/contactactions/IntentModule;->image:I

    return v0
.end method

.method public getStringId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/android/dialer/contactactions/IntentModule;->text:I

    return v0
.end method

.method public onClick()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/dialer/contactactions/IntentModule;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/contactactions/IntentModule;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
