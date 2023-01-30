.class public abstract Lcom/android/voicemail/impl/mail/store/imap/ImapString;
.super Lcom/android/voicemail/impl/mail/store/imap/ImapElement;
.source "ImapString.java"


# static fields
.field private static final DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

.field private static final EMPTY_BYTES:[B


# instance fields
.field private mIsInteger:Z

.field private mParsedDate:Ljava/util/Date;

.field private mParsedInteger:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 35
    sput-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY_BYTES:[B

    .line 37
    new-instance v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString$1;

    invoke-direct {v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString$1;-><init>()V

    sput-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY:Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "dd-MMM-yyyy HH:mm:ss Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 34
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->EMPTY_BYTES:[B

    return-object v0
.end method


# virtual methods
.method public final equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapElement;->equalsForTest(Lcom/android/voicemail/impl/mail/store/imap/ImapElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 176
    :cond_0
    check-cast p1, Lcom/android/voicemail/impl/mail/store/imap/ImapString;

    .line 177
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getAsStream()Ljava/io/InputStream;
.end method

.method public final getDateOrNull()Ljava/util/Date;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isDate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getNumber(I)I
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 119
    :cond_0
    iget p1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mParsedInteger:I

    return p1
.end method

.method public final getNumberOrZero()I
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getNumber(I)I

    move-result v0

    return v0
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public final is(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final isDate()Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 131
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mParsedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 134
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t be parsed as a date."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImapString"

    invoke-static {v1, v0}, Lcom/android/voicemail/impl/VvmLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

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

    const/4 v0, 0x0

    return v0
.end method

.method public final isNumber()Z
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mIsInteger:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mParsedInteger:I

    .line 102
    iput-boolean v1, p0, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->mIsInteger:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isString()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final startsWith(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/voicemail/impl/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    return v0

    .line 164
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract toString()Ljava/lang/String;
.end method
