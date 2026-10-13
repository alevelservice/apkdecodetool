.class public Le/f/i/a/c/d;
.super Ljava/lang/Object;
.source "AnimatedImageCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/i/a/c/d$c;,
        Le/f/i/a/c/d$b;
    }
.end annotation


# instance fields
.field private final a:Le/f/i/a/a/a;

.field private final b:Le/f/i/a/c/d$b;

.field private final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Le/f/i/a/a/a;Le/f/i/a/c/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    .line 3
    iput-object p2, p0, Le/f/i/a/c/d;->b:Le/f/i/a/c/d$b;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Le/f/i/a/c/d;->c:Landroid/graphics/Paint;

    .line 5
    iget-object p1, p0, Le/f/i/a/c/d;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Le/f/i/a/c/d;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object p1, p0, Le/f/i/a/c/d;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)I
    .locals 6

    :goto_0
    if-ltz p1, :cond_6

    .line 18
    invoke-direct {p0, p1}, Le/f/i/a/c/d;->a(I)Le/f/i/a/c/d$c;

    move-result-object v0

    .line 19
    sget-object v1, Le/f/i/a/c/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return p1

    :cond_1
    add-int/2addr p1, v1

    return p1

    .line 20
    :cond_2
    iget-object v0, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {v0, p1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object v0

    .line 21
    iget-object v2, p0, Le/f/i/a/c/d;->b:Le/f/i/a/c/d$b;

    invoke-interface {v2, p1}, Le/f/i/a/c/d$b;->a(I)Le/f/c/g/a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 22
    :try_start_0
    invoke-virtual {v2}, Le/f/c/g/a;->A()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 23
    iget-object v3, v0, Le/f/i/a/a/b;->f:Le/f/i/a/a/b$b;

    sget-object v4, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    if-ne v3, v4, :cond_3

    .line 24
    invoke-direct {p0, p2, v0}, Le/f/i/a/c/d;->a(Landroid/graphics/Canvas;Le/f/i/a/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/2addr p1, v1

    .line 25
    invoke-virtual {v2}, Le/f/c/g/a;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Le/f/c/g/a;->close()V

    .line 26
    throw p1

    .line 27
    :cond_4
    invoke-direct {p0, p1}, Le/f/i/a/c/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return p1

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private a(I)Le/f/i/a/c/d$c;
    .locals 2

    .line 29
    iget-object v0, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {v0, p1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object p1

    .line 30
    iget-object v0, p1, Le/f/i/a/a/b;->f:Le/f/i/a/a/b$b;

    .line 31
    sget-object v1, Le/f/i/a/a/b$b;->DISPOSE_DO_NOT:Le/f/i/a/a/b$b;

    if-ne v0, v1, :cond_0

    .line 32
    sget-object p1, Le/f/i/a/c/d$c;->REQUIRED:Le/f/i/a/c/d$c;

    return-object p1

    .line 33
    :cond_0
    sget-object v1, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    if-ne v0, v1, :cond_2

    .line 34
    invoke-direct {p0, p1}, Le/f/i/a/c/d;->a(Le/f/i/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    sget-object p1, Le/f/i/a/c/d$c;->NOT_REQUIRED:Le/f/i/a/c/d$c;

    return-object p1

    .line 36
    :cond_1
    sget-object p1, Le/f/i/a/c/d$c;->REQUIRED:Le/f/i/a/c/d$c;

    return-object p1

    .line 37
    :cond_2
    sget-object p1, Le/f/i/a/a/b$b;->DISPOSE_TO_PREVIOUS:Le/f/i/a/a/b$b;

    if-ne v0, p1, :cond_3

    .line 38
    sget-object p1, Le/f/i/a/c/d$c;->SKIP:Le/f/i/a/c/d$c;

    return-object p1

    .line 39
    :cond_3
    sget-object p1, Le/f/i/a/c/d$c;->ABORT:Le/f/i/a/c/d$c;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Le/f/i/a/a/b;)V
    .locals 7

    .line 28
    iget v0, p2, Le/f/i/a/a/b;->a:I

    int-to-float v2, v0

    iget v1, p2, Le/f/i/a/a/b;->b:I

    int-to-float v3, v1

    iget v4, p2, Le/f/i/a/a/b;->c:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget p2, p2, Le/f/i/a/a/b;->d:I

    add-int/2addr v1, p2

    int-to-float v5, v1

    iget-object v6, p0, Le/f/i/a/c/d;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Le/f/i/a/a/b;)Z
    .locals 2

    .line 40
    iget v0, p1, Le/f/i/a/a/b;->a:I

    if-nez v0, :cond_0

    iget v0, p1, Le/f/i/a/a/b;->b:I

    if-nez v0, :cond_0

    iget v0, p1, Le/f/i/a/a/b;->c:I

    iget-object v1, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    .line 41
    invoke-interface {v1}, Le/f/i/a/a/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p1, Le/f/i/a/a/b;->d:I

    iget-object v0, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    .line 42
    invoke-interface {v0}, Le/f/i/a/a/a;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {v1, p1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    sub-int/2addr p1, v0

    invoke-interface {v2, p1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object p1

    .line 3
    iget-object v2, v1, Le/f/i/a/a/b;->e:Le/f/i/a/a/b$a;

    sget-object v3, Le/f/i/a/a/b$a;->NO_BLEND:Le/f/i/a/a/b$a;

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Le/f/i/a/c/d;->a(Le/f/i/a/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v1, p1, Le/f/i/a/a/b;->f:Le/f/i/a/a/b$b;

    sget-object v2, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    if-ne v1, v2, :cond_2

    .line 5
    invoke-direct {p0, p1}, Le/f/i/a/c/d;->a(Le/f/i/a/a/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3
    invoke-direct {p0, p1}, Le/f/i/a/c/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    .line 4
    invoke-direct {p0, v1, v0}, Le/f/i/a/c/d;->a(ILandroid/graphics/Canvas;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ge v1, p1, :cond_4

    .line 5
    iget-object v2, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {v2, v1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object v2

    .line 6
    iget-object v3, v2, Le/f/i/a/a/b;->f:Le/f/i/a/a/b$b;

    .line 7
    sget-object v4, Le/f/i/a/a/b$b;->DISPOSE_TO_PREVIOUS:Le/f/i/a/a/b$b;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v2, Le/f/i/a/a/b;->e:Le/f/i/a/a/b$a;

    sget-object v5, Le/f/i/a/a/b$a;->NO_BLEND:Le/f/i/a/a/b$a;

    if-ne v4, v5, :cond_2

    .line 9
    invoke-direct {p0, v0, v2}, Le/f/i/a/c/d;->a(Landroid/graphics/Canvas;Le/f/i/a/a/b;)V

    .line 10
    :cond_2
    iget-object v4, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {v4, v1, v0}, Le/f/i/a/a/a;->a(ILandroid/graphics/Canvas;)V

    .line 11
    iget-object v4, p0, Le/f/i/a/c/d;->b:Le/f/i/a/c/d$b;

    invoke-interface {v4, v1, p2}, Le/f/i/a/c/d$b;->a(ILandroid/graphics/Bitmap;)V

    .line 12
    sget-object v4, Le/f/i/a/a/b$b;->DISPOSE_TO_BACKGROUND:Le/f/i/a/a/b$b;

    if-ne v3, v4, :cond_3

    .line 13
    invoke-direct {p0, v0, v2}, Le/f/i/a/c/d;->a(Landroid/graphics/Canvas;Le/f/i/a/a/b;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object p2, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {p2, p1}, Le/f/i/a/a/a;->a(I)Le/f/i/a/a/b;

    move-result-object p2

    .line 15
    iget-object v1, p2, Le/f/i/a/a/b;->e:Le/f/i/a/a/b$a;

    sget-object v2, Le/f/i/a/a/b$a;->NO_BLEND:Le/f/i/a/a/b$a;

    if-ne v1, v2, :cond_5

    .line 16
    invoke-direct {p0, v0, p2}, Le/f/i/a/c/d;->a(Landroid/graphics/Canvas;Le/f/i/a/a/b;)V

    .line 17
    :cond_5
    iget-object p2, p0, Le/f/i/a/c/d;->a:Le/f/i/a/a/a;

    invoke-interface {p2, p1, v0}, Le/f/i/a/a/a;->a(ILandroid/graphics/Canvas;)V

    return-void
.end method
