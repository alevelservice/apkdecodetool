.class public interface abstract Li/b;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Li/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/b$a;

    invoke-direct {v0}, Li/b$a;-><init>()V

    sput-object v0, Li/b;->a:Li/b;

    return-void
.end method


# virtual methods
.method public abstract a(Li/d0;Li/b0;)Li/z;
    .param p1    # Li/d0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
