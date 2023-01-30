.class public Lcom/android/dialer/app/calllog/CallLogNotificationsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CallLogNotificationsActivity.java"


# static fields
.field public static final ACTION_SEND_SMS_FROM_MISSED_CALL_NOTIFICATION:Ljava/lang/String; = "com.android.dialer.calllog.SEND_SMS_FROM_MISSED_CALL_NOTIFICATION"

.field public static final EXTRA_MISSED_CALL_NUMBER:Ljava/lang/String; = "MISSED_CALL_NUMBER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 53
    invoke-static {p0, v0}, Lcom/android/dialer/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f032d33

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.android.dialer.calllog.SEND_SMS_FROM_MISSED_CALL_NOTIFICATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "CallLogNotificationsActivity.onCreate"

    invoke-static {v1, p1, v0}, Lcom/android/dialer/common/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p0}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->getIstance(Landroid/content/Context;)Lcom/android/dialer/app/calllog/MissedCallNotifier;

    move-result-object v0

    const-string v1, "MISSED_CALL_NUMBER"

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/app/calllog/MissedCallNotifier;->sendSmsFromMissedCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/app/calllog/CallLogNotificationsActivity;->finish()V

    return-void
.end method
