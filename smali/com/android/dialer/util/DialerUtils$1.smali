.class Lcom/android/dialer/util/DialerUtils$1;
.super Ljava/lang/Object;
.source "DialerUtils.java"

# interfaces
.implements Lcom/android/dialer/telecom/OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/util/DialerUtils;->placeCallOrMakeToast(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/util/DialerUtils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 5
    .param p1, "isNrSafe"    # Z

    .line 140
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 142
    .local v1, "telMan":Landroid/telecom/TelecomManager;
    iget-object v2, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/dialer/telecom/TelecomUtil;->hasReadWriteVoicemailPermissions(Landroid/content/Context;)Z

    move-result v2

    .line 143
    .local v2, "hasCallPermission":Z
    if-nez v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    const-string v4, "Cannot place call without Phone permission"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/util/DialerUtils$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/dialer/util/DialerUtils$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 151
    .end local v1    # "telMan":Landroid/telecom/TelecomManager;
    .end local v2    # "hasCallPermission":Z
    :goto_0
    goto :goto_1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/util/DialerUtils$1;->val$context:Landroid/content/Context;

    const-string v2, "You\'re not allowed to call this number."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    :goto_1
    return-void
.end method