.class public Lio/flutter/plugin/platform/d;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lio/flutter/embedding/engine/i/h;

.field private c:Lio/flutter/embedding/engine/i/h$j;

.field private d:I

.field final e:Lio/flutter/embedding/engine/i/h$h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/i/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugin/platform/d$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/d$a;-><init>(Lio/flutter/plugin/platform/d;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/d;->e:Lio/flutter/embedding/engine/i/h$h;

    .line 3
    iput-object p1, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    .line 4
    iput-object p2, p0, Lio/flutter/plugin/platform/d;->b:Lio/flutter/embedding/engine/i/h;

    .line 5
    iget-object p1, p0, Lio/flutter/plugin/platform/d;->b:Lio/flutter/embedding/engine/i/h;

    iget-object p2, p0, Lio/flutter/plugin/platform/d;->e:Lio/flutter/embedding/engine/i/h$h;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/i/h;->a(Lio/flutter/embedding/engine/i/h$h;)V

    const/16 p1, 0x500

    .line 6
    iput p1, p0, Lio/flutter/plugin/platform/d;->d:I

    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/h$e;)Ljava/lang/CharSequence;
    .locals 4

    .line 50
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 52
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_3

    .line 54
    sget-object v1, Lio/flutter/embedding/engine/i/h$e;->PLAIN_TEXT:Lio/flutter/embedding/engine/i/h$e;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 55
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "text/*"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 58
    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    :catch_1
    move-exception p1

    const-string v0, "PlatformPlugin"

    const-string v1, "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview"

    .line 59
    invoke-static {v0, v1, p1}, Lg/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Lio/flutter/embedding/engine/i/h$e;)Ljava/lang/CharSequence;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/embedding/engine/i/h$e;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/h$c;)V
    .locals 6

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    if-le v0, v1, :cond_1

    .line 24
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v3, p1, Lio/flutter/embedding/engine/i/h$c;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p1, Lio/flutter/embedding/engine/i/h$c;->a:I

    invoke-direct {v1, v3, v4, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 25
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 26
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lio/flutter/embedding/engine/i/h$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget p1, p1, Lio/flutter/embedding/engine/i/h$c;->a:I

    invoke-direct {v0, v1, v2, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;II)V

    .line 27
    iget-object p1, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/h$i;)V
    .locals 1

    .line 10
    sget-object v0, Lio/flutter/embedding/engine/i/h$i;->CLICK:Lio/flutter/embedding/engine/i/h$i;

    if-ne p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private a(Lio/flutter/embedding/engine/i/h$j;)V
    .locals 7

    .line 34
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_3

    .line 38
    iget-object v3, p1, Lio/flutter/embedding/engine/i/h$j;->d:Lio/flutter/embedding/engine/i/h$d;

    if-eqz v3, :cond_2

    .line 39
    sget-object v6, Lio/flutter/plugin/platform/d$b;->c:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v2, -0x11

    goto :goto_0

    :cond_1
    or-int/lit8 v2, v2, 0x10

    .line 40
    :cond_2
    :goto_0
    iget-object v3, p1, Lio/flutter/embedding/engine/i/h$j;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 42
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_7

    .line 43
    iget-object v3, p1, Lio/flutter/embedding/engine/i/h$j;->b:Lio/flutter/embedding/engine/i/h$d;

    if-eqz v3, :cond_6

    .line 44
    sget-object v6, Lio/flutter/plugin/platform/d$b;->c:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    and-int/lit16 v2, v2, -0x2001

    goto :goto_1

    :cond_5
    or-int/lit16 v2, v2, 0x2000

    .line 45
    :cond_6
    :goto_1
    iget-object v3, p1, Lio/flutter/embedding/engine/i/h$j;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 47
    :cond_7
    iget-object v0, p1, Lio/flutter/embedding/engine/i/h$j;->e:Ljava/lang/Integer;

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    iput-object p1, p0, Lio/flutter/plugin/platform/d;->c:Lio/flutter/embedding/engine/i/h$j;

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lio/flutter/plugin/platform/d;->d()V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Lio/flutter/embedding/engine/i/h$c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/embedding/engine/i/h$c;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Lio/flutter/embedding/engine/i/h$i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/embedding/engine/i/h$i;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Lio/flutter/embedding/engine/i/h$j;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/embedding/engine/i/h$j;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/d;Ljava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "text label?"

    .line 62
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/i/h$k;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1706

    goto :goto_0

    :cond_0
    const/16 v0, 0x706

    :goto_0
    const/4 v1, 0x0

    .line 29
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/i/h$k;

    .line 31
    sget-object v3, Lio/flutter/plugin/platform/d$b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit16 v0, v0, -0x201

    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 32
    :cond_3
    iput v0, p0, Lio/flutter/plugin/platform/d;->d:I

    .line 33
    invoke-virtual {p0}, Lio/flutter/plugin/platform/d;->b()V

    return-void
.end method

.method static synthetic b(Lio/flutter/plugin/platform/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/platform/d;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/d;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->b:Lio/flutter/embedding/engine/i/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/i/h;->a(Lio/flutter/embedding/engine/i/h$h;)V

    return-void
.end method

.method a(Lio/flutter/embedding/engine/i/h$g;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 13
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 14
    sget-object v1, Lio/flutter/plugin/platform/d$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_5

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 17
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_5

    const/4 p1, 0x6

    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/platform/d;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    iget-object v0, p0, Lio/flutter/plugin/platform/d;->c:Lio/flutter/embedding/engine/i/h$j;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/d;->a(Lio/flutter/embedding/engine/i/h$j;)V

    :cond_0
    return-void
.end method
