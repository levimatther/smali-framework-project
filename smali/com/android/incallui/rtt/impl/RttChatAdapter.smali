.class public Lcom/android/incallui/rtt/impl/RttChatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RttChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;,
        Lcom/android/incallui/rtt/impl/RttChatAdapter$RowType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final POSITION_ADVISORY:I


# instance fields
.field private avatarDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/content/Context;

.field private lastIndexOfLocalMessage:I

.field private lastIndexOfRemoteMessage:I

.field private final messageListener:Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;

.field private rttMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowAdvisory:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    .line 74
    iput v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfRemoteMessage:I

    .line 79
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->context:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->messageListener:Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/rtt/impl/RttChatAdapter;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method private toItemPosition(I)I
    .locals 1

    if-gez p1, :cond_0

    return p1

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->shouldShowAdvisory:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method

.method private toMessagePosition(I)I
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->shouldShowAdvisory:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private updateCurrentLocalMessage(Ljava/lang/String;)V
    .locals 2

    .line 131
    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    if-ltz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    iget p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemRemoved(I)V

    const/4 p1, -0x1

    .line 146
    iput p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    goto :goto_2

    .line 148
    :cond_2
    iget p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-direct {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;-><init>()V

    .line 136
    invoke-virtual {v0, p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemInserted(I)V

    :goto_2
    return-void
.end method

.method private updateCurrentRemoteMessage(Ljava/lang/String;)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCurrentRemoteMessage  newMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RttChatAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->updateRemoteRttChatMessage(Ljava/util/List;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-static {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexLocalMessage(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    .line 177
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method addLocalMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RttChatAdapater.addLocalMessage"

    .line 181
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->updateCurrentLocalMessage(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->messageListener:Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;

    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    invoke-direct {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;->onUpdateLocalMessage(I)V

    :cond_0
    return-void
.end method

.method addRemoteMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "RttChatAdapater.addRemoteMessage"

    .line 212
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteMessage:message -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->updateCurrentRemoteMessage(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->messageListener:Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    .line 220
    invoke-static {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexRemoteMessage(Ljava/util/List;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result v0

    .line 219
    invoke-interface {p1, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter$MessageListener;->onUpdateRemoteMessage(I)V

    :cond_1
    return-void
.end method

.method computeChangeOfLocalMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    if-ltz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->computeChangedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->shouldShowAdvisory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method getRttTranscriptMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "RttChatAdapater.getRttTranscriptMessageList"

    .line 279
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-static {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->toTranscriptMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method hideAdvisory()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->shouldShowAdvisory:Z

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 97
    check-cast p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;

    .line 98
    invoke-direct {p0, p2}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toMessagePosition(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    .line 102
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v2, v2, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    iget-object v3, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    add-int/lit8 v4, p2, -0x1

    .line 103
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v3, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder  -isSameGroup =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RttChatAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    .line 107
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-object v2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->avatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p1, p2, v0, v2}, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->setMessage(Lcom/android/incallui/rtt/protocol/RttChatMessage;ZLandroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p2, p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 110
    iget-object p2, p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/rtt/impl/RttChatAdapter$1;-><init>(Lcom/android/incallui/rtt/impl/RttChatAdapter;Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rttChatMessageViewHolder.itemView   isfocus "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 85
    iget-object p2, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00f6

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;

    invoke-direct {p2, p1}, Lcom/android/incallui/rtt/impl/RttChatMessageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method onRestoreRttChat(Lcom/android/dialer/rtt/RttTranscript;)Ljava/lang/String;
    .locals 2

    const-string v0, "RttChatAdapater.onRestoreRttChat"

    .line 263
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->fromTranscript(Lcom/android/dialer/rtt/RttTranscript;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    .line 265
    invoke-static {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexLocalMessage(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyDataSetChanged()V

    .line 267
    iget p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    .line 271
    invoke-virtual {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {p1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method retrieveLastLocalMessage()Ljava/lang/String;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-static {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexLocalMessage(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    if-ltz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    .line 243
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->unfinish()V

    .line 244
    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method setAvatarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->avatarDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method showAdvisory()V
    .locals 1

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->shouldShowAdvisory:Z

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method submitLocalMessage()V
    .locals 2

    const-string v0, "RttChatAdapater.submitLocalMessage"

    .line 189
    invoke-static {v0}, Lcom/android/dialer/common/LogUtil;->enterBlock(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    if-ltz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->rttMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-virtual {v0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    .line 193
    iget v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    invoke-direct {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->toItemPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/rtt/impl/RttChatAdapter;->notifyItemChanged(I)V

    :cond_0
    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lcom/android/incallui/rtt/impl/RttChatAdapter;->lastIndexOfLocalMessage:I

    return-void
.end method
