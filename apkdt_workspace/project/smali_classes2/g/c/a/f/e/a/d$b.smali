.class final Lg/c/a/f/e/a/d$b;
.super Ljava/lang/Object;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/e/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final e:Lg/c/a/f/e/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/c/a/f/e/a/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lg/c/a/f/e/a/d;


# direct methods
.method constructor <init>(Lg/c/a/f/e/a/d;Lg/c/a/f/e/a/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/c/a/f/e/a/d$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/c/a/f/e/a/d$b;->f:Lg/c/a/f/e/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lg/c/a/f/e/a/d$b;->e:Lg/c/a/f/e/a/d$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/a/f/e/a/d$b;->f:Lg/c/a/f/e/a/d;

    iget-object v0, v0, Lg/c/a/f/e/a/a;->a:Lg/c/a/b/e;

    iget-object v1, p0, Lg/c/a/f/e/a/d$b;->e:Lg/c/a/f/e/a/d$a;

    invoke-interface {v0, v1}, Lg/c/a/b/e;->a(Lg/c/a/b/f;)V

    return-void
.end method
