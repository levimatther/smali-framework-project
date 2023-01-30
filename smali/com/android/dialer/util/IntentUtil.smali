.class public Lcom/android/dialer/util/IntentUtil;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# static fields
.field private static final NO_PHONE_TYPE:I = -0x1

.field private static final SMS_URI_PREFIX:Ljava/lang/String; = "sms:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToExistingContactIntent()Landroid/content/Intent;
    .locals 2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 55
    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getAddToExistingContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1

    .line 61
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getAddToExistingContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static getNewContactIntent()Landroid/content/Intent;
    .locals 3

    .line 34
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 38
    invoke-static {v0, p0, v1}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getNewContactIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-static {v0, p0, p1, p2}, Lcom/android/dialer/util/IntentUtil;->populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static getSendSmsIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    .line 30
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static populateContactIntent(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "phone"

    .line 69
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "name"

    .line 72
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    const-string p1, "phone_type"

    .line 75
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-void
.end method
