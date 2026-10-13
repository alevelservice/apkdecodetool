.class public interface abstract annotation Lcom/alibaba/taffy/bus/annotation/Subscribe;
.super Ljava/lang/Object;
.source "Subscribe.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/taffy/bus/annotation/Subscribe;
        filter = ""
        group = ""
        priority = 0x0
        status = 0x0
        thread = 0x2
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract filter()Ljava/lang/String;
.end method

.method public abstract group()Ljava/lang/String;
.end method

.method public abstract priority()I
.end method

.method public abstract status()I
.end method

.method public abstract thread()I
.end method
