.class public Lcom/android/voicemail/impl/utils/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    new-array p1, p1, [C

    .line 48
    iput-object p1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mSingleChar:[C

    .line 56
    iput-object p2, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 57
    iput p3, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    .line 147
    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentIndent:[C

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public printHexPair(Ljava/lang/String;I)V
    .locals 1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .locals 1

    const/16 v0, 0xa

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .line 95
    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 97
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 109
    aget-char p2, p1, p2

    .line 110
    iget v3, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 113
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 115
    iput-boolean v4, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    .line 116
    iput v3, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 120
    :cond_0
    iget p2, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mWrapLength:I

    if-lez p2, :cond_2

    iget v6, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_2

    .line 121
    iget-boolean p2, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    if-nez p2, :cond_1

    .line 123
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 124
    iput-boolean v4, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    sub-int p2, v2, v1

    .line 125
    iput p2, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 129
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 130
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 131
    iput-boolean v4, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mEmptyLine:Z

    .line 133
    iput v3, p0, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    :cond_2
    :goto_1
    move p2, v2

    goto :goto_0

    :cond_3
    if-eq v1, p2, :cond_4

    .line 139
    invoke-direct {p0}, Lcom/android/voicemail/impl/utils/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int/2addr p2, v1

    .line 140
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
