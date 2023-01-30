.class Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;
.super Landroid/os/Handler;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedDirectorySearchHandler"
.end annotation


# instance fields
.field private final contactEntryListFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/contacts/common/list/ContactEntryListFragment<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/list/ContactEntryListFragment<",
            "*>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;->contactEntryListFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Lcom/android/contacts/common/list/ContactEntryListFragment$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$DelayedDirectorySearchHandler;->contactEntryListFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntryListFragment;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 149
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    :cond_1
    return-void
.end method
