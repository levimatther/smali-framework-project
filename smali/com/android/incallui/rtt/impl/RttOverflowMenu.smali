.class public Lcom/android/incallui/rtt/impl/RttOverflowMenu;
.super Landroid/widget/PopupWindow;
.source "RttOverflowMenu.java"

# interfaces
.implements Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;


# instance fields
.field private final addCallButton:Lcom/android/incallui/rtt/impl/RttCheckableButton;

.field private final inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

.field private final muteButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->inCallButtonUiDelegate:Lcom/android/incallui/incall/protocol/InCallButtonUiDelegate;

    const p2, 0x7f0c00d8

    const/4 v0, 0x0

    .line 44
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->setContentView(Landroid/view/View;)V

    .line 46
    new-instance v0, Lcom/android/incallui/rtt/impl/-$$Lambda$RttOverflowMenu$eFkBQ8zUdWpdB2fWZ8sqQcRUNNw;

    invoke-direct {v0, p0}, Lcom/android/incallui/rtt/impl/-$$Lambda$RttOverflowMenu$eFkBQ8zUdWpdB2fWZ8sqQcRUNNw;-><init>(Lcom/android/incallui/rtt/impl/RttOverflowMenu;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->setFocusable(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07022d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->setWidth(I)V

    const p1, 0x7f0901f5

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->muteButton:Landroid/widget/ImageView;

    const p1, 0x7f0901e7

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/rtt/impl/RttCheckableButton;

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttOverflowMenu;->addCallButton:Lcom/android/incallui/rtt/impl/RttCheckableButton;

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/incallui/rtt/impl/RttCheckableButton;->setOnCheckedChangeListener(Lcom/android/incallui/rtt/impl/RttCheckableButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$eFkBQ8zUdWpdB2fWZ8sqQcRUNNw(Lcom/android/incallui/rtt/impl/RttOverflowMenu;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/incallui/rtt/impl/RttCheckableButton;Z)V
    .locals 0

    return-void
.end method

.method setAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/incallui/speakerbuttonlogic/SpeakerButtonInfo;-><init>(Landroid/telecom/CallAudioState;I)V

    return-void
.end method

.method setMuteButtonChecked(Z)V
    .locals 0

    return-void
.end method
