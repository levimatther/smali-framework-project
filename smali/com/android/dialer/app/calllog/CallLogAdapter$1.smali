.class Lcom/android/dialer/app/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogAdapter;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 224
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f09002f

    if-ne p1, p2, :cond_1

    .line 225
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object p1

    sget-object p2, Lcom/android/dialer/logging/DialerImpression$Type;->MULTISELECT_TAP_DELETE_ICON:Lcom/android/dialer/logging/DialerImpression$Type;

    invoke-interface {p1, p2}, Lcom/android/dialer/logging/LoggingBindings;->logImpression(Lcom/android/dialer/logging/DialerImpression$Type;)V

    .line 226
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$400(Lcom/android/dialer/app/calllog/CallLogAdapter;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 202
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v2, v2, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1101a2

    .line 203
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v0, v1, v2}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/view/View;Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-object p1, v0, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 207
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const/high16 v0, 0x7f0d0000

    .line 208
    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;->showMultiSelectRemoveView(Z)V

    .line 210
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$200(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;->onActionModeStateChanged(Z)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .line 238
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v0, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    .line 240
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iget-object v1, v1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1101a6

    .line 241
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p1, v0, v1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/app/calllog/CallLogAdapter;Landroid/view/View;Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$300(Lcom/android/dialer/app/calllog/CallLogAdapter;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 244
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->mActionMode:Landroid/view/ActionMode;

    .line 245
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->selectAllMode:Z

    .line 246
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    iput-boolean v0, p1, Lcom/android/dialer/app/calllog/CallLogAdapter;->deselectAllMode:Z

    .line 247
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$100(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;->showMultiSelectRemoveView(Z)V

    .line 248
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->access$200(Lcom/android/dialer/app/calllog/CallLogAdapter;)Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;->onActionModeStateChanged(Z)V

    .line 249
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogAdapter$1;->this$0:Lcom/android/dialer/app/calllog/CallLogAdapter;

    invoke-virtual {p1}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
