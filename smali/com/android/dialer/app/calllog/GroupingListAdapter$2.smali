.class Lcom/android/dialer/app/calllog/GroupingListAdapter$2;
.super Landroid/database/DataSetObserver;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/GroupingListAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter$2;->this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/dialer/app/calllog/GroupingListAdapter$2;->this$0:Lcom/android/dialer/app/calllog/GroupingListAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/GroupingListAdapter;->notifyDataSetChanged()V

    return-void
.end method
