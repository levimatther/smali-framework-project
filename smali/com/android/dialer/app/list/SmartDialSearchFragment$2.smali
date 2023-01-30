.class Lcom/android/dialer/app/list/SmartDialSearchFragment$2;
.super Ljava/lang/Object;
.source "SmartDialSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/SmartDialSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/SmartDialSearchFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-ne p2, v1, :cond_0

    .line 102
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {v1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 104
    iget-object p2, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$200(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 105
    iget-object p1, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p1}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelection(I)V

    return v0

    :cond_0
    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 110
    iget-object p2, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p3}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getCount()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_1

    .line 111
    iget-object p2, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$200(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Landroid/media/AudioManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 112
    iget-object p2, p0, Lcom/android/dialer/app/list/SmartDialSearchFragment$2;->this$0:Lcom/android/dialer/app/list/SmartDialSearchFragment;

    invoke-static {p2}, Lcom/android/dialer/app/list/SmartDialSearchFragment;->access$100(Lcom/android/dialer/app/list/SmartDialSearchFragment;)Lcom/android/contacts/common/list/PinnedHeaderListView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelection(I)V

    :cond_1
    return p1
.end method
