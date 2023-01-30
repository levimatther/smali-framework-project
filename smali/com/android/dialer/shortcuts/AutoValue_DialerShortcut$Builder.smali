.class final Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;
.super Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
.source "AutoValue_DialerShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private contactId:Ljava/lang/Long;

.field private displayName:Ljava/lang/String;

.field private lookupKey:Ljava/lang/String;

.field private rank:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/dialer/shortcuts/DialerShortcut$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/android/dialer/shortcuts/DialerShortcut;
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->contactId:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contactId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->lookupKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lookupKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->displayName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->rank:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    new-instance v0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->contactId:Ljava/lang/Long;

    .line 141
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->lookupKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->rank:Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut;-><init>(JLjava/lang/String;Ljava/lang/String;ILcom/android/dialer/shortcuts/AutoValue_DialerShortcut$1;)V

    return-object v0

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setContactId(J)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    .locals 0

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->contactId:Ljava/lang/Long;

    return-object p0
.end method

.method setDisplayName(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->displayName:Ljava/lang/String;

    return-object p0

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null displayName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setLookupKey(Ljava/lang/String;)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->lookupKey:Ljava/lang/String;

    return-object p0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null lookupKey"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setRank(I)Lcom/android/dialer/shortcuts/DialerShortcut$Builder;
    .locals 0

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/shortcuts/AutoValue_DialerShortcut$Builder;->rank:Ljava/lang/Integer;

    return-object p0
.end method
