.class public Lcom/android/incallui/DeclineCallSmsFragment;
.super Landroidx/fragment/app/Fragment;
.source "DeclineCallSmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DeclineCallSmsFragment$SmsSheetHolder;,
        Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;,
        Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;
    }
.end annotation


# instance fields
.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private listener:Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private myListAdapter:Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;

.field private smsText:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listData:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listData:Ljava/util/ArrayList;

    .line 49
    iput-object p3, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listener:Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/DeclineCallSmsFragment;)Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listener:Lcom/android/incallui/DeclineCallSmsFragment$RejectCallListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/incallui/DeclineCallSmsFragment;)Landroid/media/AudioManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public getList()Landroid/widget/ListView;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0104

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getResources()Landroid/content/res/Resources;

    .line 62
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x400

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0600be

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    const p2, 0x7f0902bc

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    const p2, 0x7f0902bd

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->smsText:Landroid/widget/TextView;

    const p2, 0x7f0902ff

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->title:Landroid/widget/TextView;

    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/operatorutils/CarrierConfigManagerEx;->isDishInSimpleMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->title:Landroid/widget/TextView;

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->title:Landroid/widget/TextView;

    const/high16 p3, 0x41a00000    # 20.0f

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    :cond_0
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listData:Ljava/util/ArrayList;

    const/16 p3, 0x8

    if-nez p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->smsText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->smsText:Landroid/widget/TextView;

    const v0, 0x7f110345

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    new-instance p2, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listData:Ljava/util/ArrayList;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;-><init>(Lcom/android/incallui/DeclineCallSmsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->myListAdapter:Lcom/android/incallui/DeclineCallSmsFragment$MyListAdapter;

    .line 83
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocus()Z

    .line 85
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/incallui/DeclineCallSmsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/DeclineCallSmsFragment$1;-><init>(Lcom/android/incallui/DeclineCallSmsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/incallui/DeclineCallSmsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/DeclineCallSmsFragment$2;-><init>(Lcom/android/incallui/DeclineCallSmsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 136
    iget-object p2, p0, Lcom/android/incallui/DeclineCallSmsFragment;->smsText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 154
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 160
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public quickChoose(I)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 143
    iget-object p1, p0, Lcom/android/incallui/DeclineCallSmsFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return v1
.end method

.method public setStatusBarColor()V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 167
    iget-object v0, p0, Lcom/android/incallui/DeclineCallSmsFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/DeclineCallSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method
