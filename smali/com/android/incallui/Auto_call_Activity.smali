.class public Lcom/android/incallui/Auto_call_Activity;
.super Landroid/app/Activity;
.source "Auto_call_Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field private mEndReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

.field private mReCallReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

.field mText:Landroid/widget/TctDialogMessage;

.field private mTime:I

.field private pi:Landroid/app/PendingIntent;

.field update_thread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/incallui/Auto_call_Activity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Auto_call_Activity$1;-><init>(Lcom/android/incallui/Auto_call_Activity;)V

    iput-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Auto_call_Activity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/incallui/Auto_call_Activity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/Auto_call_Activity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/incallui/Auto_call_Activity;->reCall()V

    return-void
.end method

.method private reCall()V
    .locals 9

    const-string v0, "recall"

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/Auto_call_Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "times"

    const/4 v4, 0x1

    .line 161
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "times = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Auto_call_Activity.reCall"

    invoke-static {v8, v5, v7}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v0, v4

    .line 163
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v2, v1}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/incallui/Auto_call_Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0032

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/incallui/Auto_call_Activity;->setContentView(I)V

    const p1, 0x7f09012c

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/incallui/Auto_call_Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TctDialogMessage;

    iput-object p1, p0, Lcom/android/incallui/Auto_call_Activity;->mText:Landroid/widget/TctDialogMessage;

    .line 41
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "auto_redial_call_time"

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    .line 42
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1103da

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->mText:Landroid/widget/TctDialogMessage;

    invoke-virtual {v0, p1}, Landroid/widget/TctDialogMessage;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2400

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    const v0, 0x7f110006

    const v1, 0x7f11006d

    const v3, 0x7f11025e

    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 52
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "update_time_action"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "alarm"

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/incallui/Auto_call_Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 55
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->pi:Landroid/app/PendingIntent;

    .line 57
    iget v0, p0, Lcom/android/incallui/Auto_call_Activity;->mTime:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 59
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->pi:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 60
    new-instance v0, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;-><init>(Lcom/android/incallui/Auto_call_Activity;)V

    iput-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->mReCallReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLAMSHELL_DOWN"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-direct {v1, p0}, Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;-><init>(Lcom/android/incallui/Auto_call_Activity;)V

    iput-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->mEndReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    .line 65
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->mReCallReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/Auto_call_Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->mEndReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/Auto_call_Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object p1, p0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->mReCallReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/Auto_call_Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->mEndReceiver:Lcom/android/incallui/Auto_call_Activity$ReCallReceiver;

    invoke-virtual {p0, v0}, Lcom/android/incallui/Auto_call_Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "alarm"

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/Auto_call_Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 100
    iget-object v2, p0, Lcom/android/incallui/Auto_call_Activity;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 101
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->finish()V

    .line 104
    invoke-direct {p0}, Lcom/android/incallui/Auto_call_Activity;->reCall()V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/incallui/Auto_call_Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "recall"

    .line 110
    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/Auto_call_Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v1, 0x14

    const-string v3, "times"

    .line 112
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    iget-object v0, p0, Lcom/android/incallui/Auto_call_Activity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/Auto_call_Activity;->update_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/incallui/Auto_call_Activity;->finish()V

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 118
    new-instance v0, Landroid/app/TctDialog;

    invoke-direct {v0, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11025e

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    const v1, 0x7f11025d

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setMessage(I)Landroid/app/TctDialog;

    .line 121
    invoke-virtual {v0, v2}, Landroid/app/TctDialog;->setCancelable(Z)V

    const v1, 0x104000a

    .line 122
    new-instance v2, Lcom/android/incallui/Auto_call_Activity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/Auto_call_Activity$2;-><init>(Lcom/android/incallui/Auto_call_Activity;Landroid/app/TctDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    .line 128
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    .line 130
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
