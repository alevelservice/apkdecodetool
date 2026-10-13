.class final Lg/a/c/a/b$c;
.super Ljava/lang/Object;
.source "BasicMessageChannel.java"

# interfaces
.implements Lg/a/c/a/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lg/a/c/a/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/c/a/b$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lg/a/c/a/b;


# direct methods
.method private constructor <init>(Lg/a/c/a/b;Lg/a/c/a/b$e;)V
    .locals 0
    .param p1    # Lg/a/c/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/c/a/b$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lg/a/c/a/b$c;->b:Lg/a/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lg/a/c/a/b$c;->a:Lg/a/c/a/b$e;

    return-void
.end method

.method synthetic constructor <init>(Lg/a/c/a/b;Lg/a/c/a/b$e;Lg/a/c/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/a/c/a/b$c;-><init>(Lg/a/c/a/b;Lg/a/c/a/b$e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/a/c/a/b$c;->a:Lg/a/c/a/b$e;

    iget-object v1, p0, Lg/a/c/a/b$c;->b:Lg/a/c/a/b;

    invoke-static {v1}, Lg/a/c/a/b;->a(Lg/a/c/a/b;)Lg/a/c/a/i;

    move-result-object v1

    invoke-interface {v1, p1}, Lg/a/c/a/i;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lg/a/c/a/b$e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BasicMessageChannel#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lg/a/c/a/b$c;->b:Lg/a/c/a/b;

    invoke-static {v0}, Lg/a/c/a/b;->b(Lg/a/c/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method
