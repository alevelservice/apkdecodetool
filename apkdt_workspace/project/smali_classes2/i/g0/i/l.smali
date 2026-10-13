.class public interface abstract Li/g0/i/l;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Li/g0/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/g0/i/l$a;

    invoke-direct {v0}, Li/g0/i/l$a;-><init>()V

    sput-object v0, Li/g0/i/l;->a:Li/g0/i/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILi/g0/i/b;)V
.end method

.method public abstract a(ILj/e;IZ)Z
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/g0/i/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Li/g0/i/c;",
            ">;Z)Z"
        }
    .end annotation
.end method
