.class public final Lg/a/c/a/b;
.super Ljava/lang/Object;
.source "BasicMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/c/a/b$b;,
        Lg/a/c/a/b$c;,
        Lg/a/c/a/b$e;,
        Lg/a/c/a/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lg/a/c/a/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lg/a/c/a/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/i;)V
    .locals 0
    .param p1    # Lg/a/c/a/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lg/a/c/a/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/c/a/c;",
            "Ljava/lang/String;",
            "Lg/a/c/a/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/a/c/a/b;->a:Lg/a/c/a/c;

    .line 3
    iput-object p2, p0, Lg/a/c/a/b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lg/a/c/a/b;->c:Lg/a/c/a/i;

    return-void
.end method

.method static synthetic a(Lg/a/c/a/b;)Lg/a/c/a/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/b;->c:Lg/a/c/a/i;

    return-object p0
.end method

.method static synthetic b(Lg/a/c/a/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/b;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lg/a/c/a/b$d;)V
    .locals 4
    .param p1    # Lg/a/c/a/b$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/c/a/b$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lg/a/c/a/b;->a:Lg/a/c/a/c;

    iget-object v1, p0, Lg/a/c/a/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg/a/c/a/b$b;

    invoke-direct {v3, p0, p1, v2}, Lg/a/c/a/b$b;-><init>(Lg/a/c/a/b;Lg/a/c/a/b$d;Lg/a/c/a/b$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lg/a/c/a/c;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lg/a/c/a/b;->a(Ljava/lang/Object;Lg/a/c/a/b$e;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Lg/a/c/a/b$e;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/b$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lg/a/c/a/b$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lg/a/c/a/b;->a:Lg/a/c/a/c;

    iget-object v1, p0, Lg/a/c/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lg/a/c/a/b;->c:Lg/a/c/a/i;

    .line 4
    invoke-interface {v2, p1}, Lg/a/c/a/i;->a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg/a/c/a/b$c;

    invoke-direct {v3, p0, p2, v2}, Lg/a/c/a/b$c;-><init>(Lg/a/c/a/b;Lg/a/c/a/b$e;Lg/a/c/a/b$a;)V

    move-object v2, v3

    .line 5
    :goto_0
    invoke-interface {v0, v1, p1, v2}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method
