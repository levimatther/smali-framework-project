.class public Lcom/android/contacts/common/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactsUtils$UserType;
    }
.end annotation


# static fields
.field public static final USER_TYPE_CURRENT:I = 0x0

.field public static final USER_TYPE_WORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_1
    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v4, v2

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result p0

    if-eqz p0, :cond_2

    return-wide v0

    :cond_2
    return-wide v2
.end method
