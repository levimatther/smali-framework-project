.class public final Lcom/android/incallui/rtt/protocol/RttChatMessage;
.super Ljava/lang/Object;
.source "RttChatMessage.java"


# static fields
.field private static final SPLITTER:Lcom/google/common/base/Splitter;


# instance fields
.field private final content:Ljava/lang/StringBuilder;

.field private isFinished:Z

.field public isRemote:Z

.field private timstamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    .line 32
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->SPLITTER:Lcom/google/common/base/Splitter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->timstamp:J

    return-void
.end method

.method public static computeChangedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 85
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/16 v3, 0x8

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v1, p0, :cond_2

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromTranscript(Lcom/android/dialer/rtt/RttTranscript;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/rtt/RttTranscript;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/rtt/RttTranscript;->getMessagesList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/rtt/RttTranscriptMessage;

    .line 227
    new-instance v2, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-direct {v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;-><init>()V

    .line 228
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/incallui/rtt/protocol/RttChatMessage;->timstamp:J

    .line 230
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getIsRemote()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    .line 231
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getIsFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    invoke-virtual {v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    .line 234
    :cond_1
    invoke-virtual {v1}, Lcom/android/dialer/rtt/RttTranscriptMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "RttChatMessage.fromTranscript"

    invoke-static {v4, v1, v3}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getLastIndexLocalMessage(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;)I"
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 199
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v1, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getLastIndexRemoteMessage(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;)I"
        }
    .end annotation

    .line 190
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 191
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v1, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static getLastIndexUnfinishedRemoteMessage(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;)I"
        }
    .end annotation

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 183
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v1, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    iget-boolean v1, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished:Z

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static toTranscriptMessageList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/dialer/rtt/RttTranscriptMessage;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    .line 210
    invoke-static {}, Lcom/android/dialer/rtt/RttTranscriptMessage;->newBuilder()Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->setContent(Ljava/lang/String;)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->timstamp:J

    .line 212
    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->setTimestamp(J)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    .line 213
    invoke-virtual {v2, v3}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->setIsRemote(Z)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished:Z

    .line 214
    invoke-virtual {v2, v3}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->setIsFinished(Z)Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/android/dialer/rtt/RttTranscriptMessage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v1}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RttChatMessage.toTranscriptMessageList"

    invoke-static {v3, v1, v2}, Lcom/android/dialer/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static updateRemoteRttChatMessage(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/incallui/rtt/protocol/RttChatMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lcom/android/dialer/common/Assert;->isNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\r"

    const-string v1, ""

    .line 99
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u2028"

    const-string v1, "\n"

    .line 100
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-static {p0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexUnfinishedRemoteMessage(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_2

    .line 122
    new-instance v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-direct {v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;-><init>()V

    .line 123
    invoke-virtual {v3, v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 124
    iput-boolean v4, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    .line 128
    :cond_1
    iget-object v2, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    .line 133
    invoke-virtual {v5, v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v5}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    .line 137
    :cond_3
    iget-object v2, v5, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 138
    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    move-object v3, v5

    .line 141
    :cond_5
    :goto_1
    iget-object v2, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    .line 143
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 144
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {p0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexRemoteMessage(Ljava/util/List;)I

    move-result v3

    if-gez v3, :cond_8

    .line 149
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6

    .line 150
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 154
    new-instance v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-direct {v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;-><init>()V

    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 156
    iput-boolean v4, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isRemote:Z

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    invoke-virtual {v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    .line 160
    :cond_7
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 164
    :cond_8
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    .line 165
    invoke-virtual {v3}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->unfinish()V

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->append(Ljava/lang/String;)V

    .line 167
    iget-object v2, v3, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :cond_9
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 172
    invoke-static {p0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->getLastIndexRemoteMessage(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_a

    .line 175
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;

    invoke-virtual {p0}, Lcom/android/incallui/rtt/protocol/RttChatMessage;->finish()V

    :cond_a
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished:Z

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished:Z

    return v0
.end method

.method public unfinish()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/incallui/rtt/protocol/RttChatMessage;->isFinished:Z

    return-void
.end method
