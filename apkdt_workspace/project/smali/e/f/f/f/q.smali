.class public Le/f/f/f/q;
.super Ljava/lang/Object;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/f/f/q$l;,
        Le/f/f/f/q$k;,
        Le/f/f/f/q$d;,
        Le/f/f/f/q$e;,
        Le/f/f/f/q$c;,
        Le/f/f/f/q$h;,
        Le/f/f/f/q$g;,
        Le/f/f/f/q$f;,
        Le/f/f/f/q$i;,
        Le/f/f/f/q$j;,
        Le/f/f/f/q$a;,
        Le/f/f/f/q$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)Le/f/f/f/p;
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Le/f/f/f/p;

    if-eqz v1, :cond_1

    .line 2
    check-cast p0, Le/f/f/f/p;

    return-object p0

    .line 3
    :cond_1
    instance-of v1, p0, Le/f/f/f/d;

    if-eqz v1, :cond_2

    .line 4
    check-cast p0, Le/f/f/f/d;

    invoke-interface {p0}, Le/f/f/f/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5
    invoke-static {p0}, Le/f/f/f/q;->a(Landroid/graphics/drawable/Drawable;)Le/f/f/f/p;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    instance-of v1, p0, Le/f/f/f/a;

    if-eqz v1, :cond_4

    .line 7
    check-cast p0, Le/f/f/f/a;

    .line 8
    invoke-virtual {p0}, Le/f/f/f/a;->a()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Le/f/f/f/a;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 10
    invoke-static {v3}, Le/f/f/f/q;->a(Landroid/graphics/drawable/Drawable;)Le/f/f/f/p;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
