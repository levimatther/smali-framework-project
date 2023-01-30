.class Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactMatch"
.end annotation


# instance fields
.field private final id:J

.field private final lookupKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1260
    iput-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    .line 1261
    iput-wide p2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1274
    :cond_0
    instance-of v1, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1275
    check-cast p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    .line 1276
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1266
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
