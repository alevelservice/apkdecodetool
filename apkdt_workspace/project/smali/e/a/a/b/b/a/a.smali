.class public Le/a/a/b/b/a/a;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/a/b/b/a/b;

    invoke-direct {v0}, Le/a/a/b/b/a/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/a/b/b/a/a;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
