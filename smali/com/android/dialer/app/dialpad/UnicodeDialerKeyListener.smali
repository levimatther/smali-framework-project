.class public Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "UnicodeDialerKeyListener.java"


# static fields
.field public static final INSTANCE:Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;

    invoke-direct {v0}, Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;-><init>()V

    sput-object v0, Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/app/dialpad/UnicodeDialerKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 40
    invoke-super/range {v1 .. v7}, Landroid/text/method/DialerKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p4

    if-nez p4, :cond_1

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p4
.end method
