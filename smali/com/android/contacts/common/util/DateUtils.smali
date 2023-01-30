.class public Lcom/android/contacts/common/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDayDifference(Landroid/text/format/Time;JJ)I
    .locals 2

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 35
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    .line 37
    invoke-virtual {p0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 38
    iget-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p0

    sub-int/2addr p0, p1

    .line 40
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method
