.class public Lcom/android/voicemail/impl/mail/store/imap/ImapList;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
.source "ImapList.java"


# static fields
.field public static final EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapList;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/voicemail/impl/mail/store/imap/ImapElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/voicemail/impl/mail/store/imap/ImapList$1;

    invoke-direct {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList$1;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method private final flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const/16 v0, 0x5b

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-lez v0, :cond_0

    const/16 v1, 0x2c

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x5d

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method add(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t add null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public destroy()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    .line 167
    invoke-virtual {v1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    .line 171
    :cond_1
    invoke-super {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->destroy()V

    return-void
.end method

.method public equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z
    .locals 4

    .line 212
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    .line 216
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    invoke-virtual {p1, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final flatten()Ljava/lang/String;
    .locals 1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->flatten(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->NONE:Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    :goto_0
    return-object p1
.end method

.method final getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
    .locals 2

    const/4 v0, 0x1

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 114
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapList;
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    move-result-object p1

    return-object p1
.end method

.method public final getKeyedListOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapList;
    .locals 0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    :goto_0
    return-object p1
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p1

    return-object p1
.end method

.method public final getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getKeyedElementOrNull(Ljava/lang/String;Z)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    :goto_0
    return-object p1
.end method

.method public final getListOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapList;
    .locals 1

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isList()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapList;

    :goto_0
    return-object p1
.end method

.method public final getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/voicemail/impl/mail/store/imap/ImapElement;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    :goto_0
    return-object p1
.end method

.method public final is(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->is(ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final is(ILjava/lang/String;Z)Z
    .locals 0

    if-nez p3, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isList()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isString()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
