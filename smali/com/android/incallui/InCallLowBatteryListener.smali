.class public Lcom/android/incallui/InCallLowBatteryListener;
.super Ljava/lang/Object;
.source "InCallLowBatteryListener.java"

# interfaces
.implements Lcom/android/incallui/call/CallList$Listener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;


# static fields
.field private static sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;


# instance fields
.field private final PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

.field private mAlert:Landroid/app/AlertDialog;

.field private mCallList:Lcom/android/incallui/call/CallList;

.field private mLowBatteryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/incallui/call/DialerCall;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/call/CallList;

    .line 85
    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeDisconnectMoCall(Lcom/android/incallui/call/DialerCall;)V

    return-void
.end method

.method private canProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 364
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    return v0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "canProcessLowBatteryIndication no mapping for call in low battery map"

    .line 379
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method private displayLowBatteryAlert(Lcom/android/incallui/call/DialerCall;)V
    .locals 6

    .line 483
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    .line 485
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "displayLowBatteryAlert inCallActivity is NULL"

    .line 487
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 491
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1102df

    .line 492
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 493
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallLowBatteryListener$1;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const v2, 0x7f1102e2

    const v3, 0x7f1102e0

    const v4, 0x7f1102e4

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$2;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$2;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 510
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$3;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$3;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 517
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isOutgoingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallLowBatteryListener$4;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 534
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallLowBatteryListener$5;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 547
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isActiveUnPausedVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 550
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 552
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$6;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$6;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    const v0, 0x7f1102e1

    .line 562
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1102e3

    .line 563
    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$7;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$7;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 572
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallLowBatteryListener;->isIncomingUpgradeReq(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 574
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$8;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$8;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$9;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$9;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 594
    :cond_5
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$10;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallLowBatteryListener$10;-><init>(Lcom/android/incallui/InCallLowBatteryListener;)V

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 605
    new-instance v0, Lcom/android/incallui/InCallLowBatteryListener$11;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$11;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    .line 615
    new-instance v1, Lcom/android/incallui/InCallLowBatteryListener$12;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallLowBatteryListener$12;-><init>(Lcom/android/incallui/InCallLowBatteryListener;Lcom/android/incallui/call/DialerCall;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 628
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 629
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 630
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 636
    iget-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallLowBatteryListener;
    .locals 2

    const-class v0, Lcom/android/incallui/InCallLowBatteryListener;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Lcom/android/incallui/InCallLowBatteryListener;

    invoke-direct {v1}, Lcom/android/incallui/InCallLowBatteryListener;-><init>()V

    sput-object v1, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;

    .line 131
    :cond_0
    sget-object v1, Lcom/android/incallui/InCallLowBatteryListener;->sInCallLowBatteryListener:Lcom/android/incallui/InCallLowBatteryListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isActiveUnPausedVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    .line 350
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isActiveVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isIncomingUpgradeReq(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLowBattery(Landroid/telecom/Call$Details;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "LowBattery"

    .line 343
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 345
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLowBattery : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private isLowBatteryDialogShowing()Z
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLowBatteryVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 355
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBattery(Landroid/telecom/Call$Details;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private maybeAddToLowBatteryMap(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private maybeDisconnectMoCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    const-string v0, "disconnect MO call this is waiting for user input"

    .line 456
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->disconnect()V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 462
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->canProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->displayLowBatteryAlert(Lcom/android/incallui/call/DialerCall;)V

    .line 465
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissPendingDialogs()Z
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mAlert:Landroid/app/AlertDialog;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnswerIncomingCall(Lcom/android/incallui/call/DialerCall;I)Z
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswerIncomingCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    iget-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "onAnswerIncomingCall no call in low battery map"

    .line 323
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 330
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBatteryDialogShowing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 333
    iget-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public onCallListChange(Lcom/android/incallui/call/CallList;)V
    .locals 0

    return-void
.end method

.method public onChangeToVideoCall(Lcom/android/incallui/call/DialerCall;)Z
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeToVideoCall call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->isLowBattery(Landroid/telecom/Call$Details;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "this call is not present in the lowbatterymap. add it."

    .line 295
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public onDestroyInCallActivity()V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onDestroyInCallActivity dismissed low battery dialog"

    .line 187
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "onDestroyInCallActivity call is null"

    .line 197
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->PROCESS_LOW_BATTERY:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/call/DialerCall;Landroid/telecom/Call$Details;)V
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " details = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p2}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "onDetailsChanged: no primary call.Clear the map/dismiss low battery alert"

    .line 411
    invoke-static {p0, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    iget-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 417
    iget-object p2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p2, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isIncomingVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 429
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->isVideoCall(Lcom/android/incallui/call/DialerCall;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 433
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    return-void

    .line 438
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeAddToLowBatteryMap(Lcom/android/incallui/call/DialerCall;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)V

    return-void

    :cond_4
    :goto_0
    const-string p1, " onDetailsChanged: call is null/Details not for primary call"

    .line 418
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onHandoverToWifiFailed(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->maybeAddToLowBatteryMap(Lcom/android/incallui/call/DialerCall;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    return-void
.end method

.method public onInternationalCallOnWifi(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(Lcom/android/incallui/call/DialerCall;)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSessionModificationStateChange call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getVideoTech()Lcom/android/incallui/videotech/VideoTech;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/incallui/videotech/VideoTech;->getSessionModificationState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallLowBatteryListener;->isIncomingUpgradeReq(I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onSessionModificationStateChange removing call update listener"

    .line 255
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    :cond_1
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0}, Lcom/android/incallui/PrimaryCallTracker;->getPrimaryCall()Lcom/android/incallui/call/DialerCall;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUiShowing showing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " call = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallLowBatteryListener;->maybeProcessLowBatteryIndication(Lcom/android/incallui/call/DialerCall;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/InCallLowBatteryListener;->dismissPendingDialogs()Z

    return-void
.end method

.method public onWiFiToLteHandover(Lcom/android/incallui/call/DialerCall;)V
    .locals 0

    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 1

    .line 99
    new-instance p1, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {p1}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 100
    invoke-static {}, Lcom/android/incallui/call/CallList;->getInstance()Lcom/android/incallui/call/CallList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/call/CallList;

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/incallui/call/CallList;->addListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 102
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 103
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {p1, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 104
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 105
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    return-void
.end method

.method public tearDown()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/call/CallList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/incallui/call/CallList;->removeListener(Lcom/android/incallui/call/CallList$Listener;)V

    .line 114
    iput-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mCallList:Lcom/android/incallui/call/CallList;

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 117
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 118
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 120
    iget-object v0, p0, Lcom/android/incallui/InCallLowBatteryListener;->mLowBatteryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    iput-object v1, p0, Lcom/android/incallui/InCallLowBatteryListener;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    return-void
.end method
