.class public Lcom/android/incallui/call/AddCallDialog;
.super Landroid/app/Dialog;
.source "AddCallDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field public context:Landroid/content/Context;

.field private listener:Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;

.field private mListView:Landroid/widget/ListView;

.field private optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tv1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lcom/android/incallui/call/AddCallDialog;->listener:Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;

    .line 47
    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/call/AddCallDialog;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/call/AddCallDialog;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/incallui/call/AddCallDialog;->tv1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/incallui/call/AddCallDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->tv1:Landroid/widget/TextView;

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0xe

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/AddCallDialog;->requestWindowFeature(I)Z

    .line 65
    iget-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->context:Landroid/content/Context;

    const v0, 0x7f0c002b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/incallui/call/AddCallDialog;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object v0

    const v3, 0x7f110058

    .line 72
    invoke-virtual {v0, v2, v3, v2, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->optionList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/android/incallui/call/AddCallDialog$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/call/AddCallDialog$1;-><init>(Lcom/android/incallui/call/AddCallDialog;)V

    iput-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->adapter:Landroid/widget/BaseAdapter;

    const v0, 0x7f0901df

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->mListView:Landroid/widget/ListView;

    .line 112
    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/android/incallui/call/AddCallDialog;->listener:Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;

    invoke-interface {p1, p3}, Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;->onClick(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->dismiss()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->listener:Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;->onClick(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->dismiss()V

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/incallui/call/AddCallDialog;->listener:Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/call/AddCallDialog$LeaveMyDialogListener;->onClick(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->dismiss()V

    .line 142
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 3

    .line 118
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 120
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 121
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/call/AddCallDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
