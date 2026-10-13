.class Landroidx/core/view/e0$b;
.super Landroidx/core/view/e0$d;
.source "WindowInsetsCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static c:Ljava/lang/reflect/Field; = null

.field private static d:Z = false

.field private static e:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Z = false


# instance fields
.field private b:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/e0$d;-><init>()V

    .line 2
    invoke-static {}, Landroidx/core/view/e0$b;->b()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/e0$b;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/e0;)V
    .locals 0
    .param p1    # Landroidx/core/view/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Landroidx/core/view/e0$d;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/e0;->k()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/e0$b;->b:Landroid/view/WindowInsets;

    return-void
.end method

.method private static b()Landroid/view/WindowInsets;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    sget-boolean v0, Landroidx/core/view/e0$b;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    const-class v0, Landroid/view/WindowInsets;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CONSUMED"

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/e0$b;->c:Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    :catch_0
    sput-boolean v1, Landroidx/core/view/e0$b;->d:Z

    .line 6
    :cond_0
    sget-object v0, Landroidx/core/view/e0$b;->c:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 8
    new-instance v3, Landroid/view/WindowInsets;

    invoke-direct {v3, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :catch_1
    nop

    .line 9
    :cond_1
    sget-boolean v0, Landroidx/core/view/e0$b;->f:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 10
    :try_start_3
    const-class v0, Landroid/view/WindowInsets;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/e0$b;->e:Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 11
    :catch_2
    sput-boolean v1, Landroidx/core/view/e0$b;->f:Z

    .line 12
    :cond_2
    sget-object v0, Landroidx/core/view/e0$b;->e:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_3

    :try_start_4
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    :cond_3
    return-object v2
.end method


# virtual methods
.method a()Landroidx/core/view/e0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$b;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object v0

    return-object v0
.end method

.method b(La/i/h/b;)V
    .locals 4
    .param p1    # La/i/h/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/core/view/e0$b;->b:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p1, La/i/h/b;->a:I

    iget v2, p1, La/i/h/b;->b:I

    iget v3, p1, La/i/h/b;->c:I

    iget p1, p1, La/i/h/b;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/e0$b;->b:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
