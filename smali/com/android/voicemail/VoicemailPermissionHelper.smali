.class public Lcom/android/voicemail/VoicemailPermissionHelper;
.super Ljava/lang/Object;
.source "VoicemailPermissionHelper.java"


# static fields
.field private static final VOICEMAIL_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v1, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const-string v2, "com.android.voicemail.permission.READ_VOICEMAIL"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.SEND_SMS"

    .line 33
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/voicemail/VoicemailPermissionHelper;->VOICEMAIL_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMissingPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    sget-object v1, Lcom/android/voicemail/VoicemailPermissionHelper;->VOICEMAIL_PERMISSIONS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 54
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hasPermissions(Landroid/content/Context;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/android/voicemail/VoicemailPermissionHelper;->getMissingPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
