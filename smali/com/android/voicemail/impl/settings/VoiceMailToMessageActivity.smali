.class public Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoiceMailToMessageActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceMailToMessageActivity"


# instance fields
.field private etEmailAddress:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private menu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private menuBar:Landroid/widget/MenuBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->menu:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->etEmailAddress:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0xe

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    iput-object p0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0c006d

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->menuBar:Landroid/widget/MenuBar;

    .line 43
    iget-object v1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->menu:Ljava/util/ArrayList;

    const v2, 0x7f110525

    const v3, 0x7f11010b

    const v4, 0x7f110550

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->setContentView(I)V

    const p1, 0x7f090303

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f090155

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->etEmailAddress:Landroid/widget/EditText;

    .line 51
    invoke-static {p0}, Lcom/tcl/netlibrary/config/VVMConfig;->getInstance(Landroid/content/Context;)Lcom/tcl/netlibrary/config/VVMConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tcl/netlibrary/config/VVMConfig;->getEmailAddressList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->etEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceMailToMessageActivity"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity$1;-><init>(Lcom/android/voicemail/impl/settings/VoiceMailToMessageActivity;Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
