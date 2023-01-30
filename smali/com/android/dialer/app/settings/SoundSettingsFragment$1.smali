.class Lcom/android/dialer/app/settings/SoundSettingsFragment$1;
.super Landroid/os/Handler;
.source "SoundSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/settings/SoundSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/settings/SoundSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/settings/SoundSettingsFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment$1;->this$0:Lcom/android/dialer/app/settings/SoundSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/settings/SoundSettingsFragment$1;->this$0:Lcom/android/dialer/app/settings/SoundSettingsFragment;

    invoke-static {v0}, Lcom/android/dialer/app/settings/SoundSettingsFragment;->access$000(Lcom/android/dialer/app/settings/SoundSettingsFragment;)Landroid/preference/Preference;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
