.class public Lcom/android/dialer/interactions/ContactUpdateService;
.super Landroid/app/IntentService;
.source "ContactUpdateService.java"


# static fields
.field public static final EXTRA_PHONE_NUMBER_DATA_ID:Ljava/lang/String; = "phone_number_data_id"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const-class v0, Lcom/android/dialer/interactions/ContactUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/dialer/interactions/ContactUpdateService;->setIntentRedelivery(Z)V

    return-void
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/interactions/ContactUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "phone_number_data_id"

    .line 37
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "phone_number_data_id"

    const-wide/16 v1, -0x1

    .line 44
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/database/ContactUpdateUtils;->setSuperPrimary(Landroid/content/Context;J)V

    return-void
.end method
