module NeuralPDELogging

using NeuralPDE

function logvector(logger, v, name, step)
    if logger isa TBLogger
        for j in 1:length(v)
            log_value(logger, "$(name)/$(j)", v[j], step=step)
        end
    end
end

function logscalar(logger, s, name, step)
    if logger isa TBLogger
        log_value(logger, "$(name)", s, step=step)
    end
end

NeuralPDE.logvector = logvector
NeuralPDE.logscalar = logscalar

export logvector, logscalar

end
